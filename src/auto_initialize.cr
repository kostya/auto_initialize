module AutoInitialize
  def initialize(**args : **T) forall T
    {% names = @type.instance_vars.map(&.id) %}
    {% for key in T.keys.map(&.id) %}
      {% unless names.includes?(key) %}
        {% raise "no argument named '#{key}'" %}
      {% end %}

      @{{key}} = args[{{key.symbolize}}]
    {% end %}
    after_initialize
  end

  def after_initialize
  end
end

