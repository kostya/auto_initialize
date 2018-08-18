require "../src/auto_initialize"

class A
  include AutoInitialize
  property x : Int32
  property y : Int32?

  def after_initialize
    @y = @x + 1
  end
end

p A.new(x: 1) # => #<A:0x10befc0 @x=1, @y=2>
