# auto_initialize

Generate initialize methods for classes and structs

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  auto_initialize:
    github: kostya/auto_initialize
```

## Usage

```crystal
require "auto_initialize"

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
```

## After initialize hook

```crystal
require "auto_initialize"

class A
  include AutoInitialize
  property x : Int32
  property y : Int32?

  def after_initialize
    @y = @x + 1
  end
end

p A.new(x: 1) # => #<A:0x10befc0 @x=1, @y=2>
```

## Auto expanding classes

```crystal
require "auto_initialize"

# some base class
class A
  include AutoInitialize
  property x : Int32
end

# some user code extend this class, with another field
class A
  property y : String
end

p A.new(x: 1, y: "bla") # => #<A:0x1032d2f00 @x=1, @y="bla">
```
