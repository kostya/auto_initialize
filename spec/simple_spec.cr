require "./spec_helper"

struct A
  include AutoInitialize

  property a : Int32
end

describe AutoInitialize do
  it "works with named_tuple" do
    A.new(a: 1).a.should eq 1
  end

  it "works with args" do
    A.new(1).a.should eq 1
  end
end
