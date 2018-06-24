module AutoInitialize
  def initialize(**args : **T) forall T
    {% for key in T.keys.map(&.id) %}
      {% unless @type.instance_vars.map(&.id).includes?(key) %}
        {% raise "no argument named '#{key}'" %}
      {% end %}

      @{{key}} = args[{{key.symbolize}}]
    {% end %}
    after_initialize
  end

  def after_initialize
  end
end

