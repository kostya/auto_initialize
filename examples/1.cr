require "../src/auto_initialize"

struct A
  include AutoInitialize

  property a : Int32
  property b : String = "def"
  property c : Int32 = 2
  property d : String?
  property e : Float64?
end

p A.new(a: 1, b: "what", c: 3, d: "bla", e: 1.0) # => A(@a=1, @b="what", @c=3, @d="bla", @e=1.0)
p A.new(a: 1, c: 3, e: 1.0)                      # => A(@a=1, @b="def", @c=3, @d=nil, @e=1.0)
