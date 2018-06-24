require "spec"
require "../src/auto_initialize"

# ============ simple examples =============

class Simple
  include AutoInitialize

  property a : Int32
end

class EndDefault
  include AutoInitialize

  property a : Int32
  property b : Int32 = 2
end

class EndNil
  include AutoInitialize

  property a : Int32
  property b : Int32?
end

class SimpleAfterInitialize
  include AutoInitialize

  property a : Int32
  property b : Int32?

  def after_initialize
    @b = @a + 1
  end
end

# ========== examples mix default and not default values ================

class MiddleDefault
  include AutoInitialize

  property a : Int32
  property b : Int32 = 2
  property c : Int32
end

class MiddleDefaultNil
  include AutoInitialize

  property a : Int32
  property b : Int32 = 2
  property c : Int32
  property d : Int32?
end

class MiddleDefaultNil2
  include AutoInitialize

  property a : Int32
  property b : Int32 = 2
  property c : Int32
  property d : Int32?
  property e : Int32
end
