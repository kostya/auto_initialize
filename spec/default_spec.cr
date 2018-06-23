require "./spec_helper"

struct B
  include AutoInitialize

  property a : Int32
  property b : String = "bla"
end

describe AutoInitialize do
  it "works with named_tuple" do
    a = A.new(a: 1, b: "jo")
    a.a.should eq 1
    a.b.should eq "jo"
  end

  it "works with named_tuple" do
    a = A.new(a: 1)
    a.a.should eq 1
    a.b.should eq "bla"
  end

  it "works with args" do
    A.new(1).a.should eq 1
  end
end
