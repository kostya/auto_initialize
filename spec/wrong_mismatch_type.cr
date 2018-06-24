require "./spec_helper"

class MismatchType
  include AutoInitialize

  property id : Int32
  property x = 1
  property y = "foo"
end

describe AutoInitialize do
  it { MismatchType.new(id: 2, y: 2) }
end
