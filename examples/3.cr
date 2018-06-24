require "../src/auto_initialize"

class A
  include AutoInitialize
  property x : Int32
end

# some user code extend this class, with another field
class A
  property y : String
end

p A.new(x: 1, y: "bla") # => #<A:0x1032d2f00 @x=1, @y="bla">
