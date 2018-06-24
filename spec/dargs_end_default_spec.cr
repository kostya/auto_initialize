require "./spec_helper"

describe AutoInitialize do
  it do
    s = EndDefault.new(a: 1)
    s.a.should eq 1
    s.b.should eq 2
  end

  it do
    s = EndDefault.new(a: 1, b: 3)
    s.a.should eq 1
    s.b.should eq 3
  end

  it do
    s = EndDefault.new(b: 3, a: 2)
    s.a.should eq 2
    s.b.should eq 3
  end
end
