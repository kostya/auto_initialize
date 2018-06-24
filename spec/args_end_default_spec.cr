require "./spec_helper"

describe AutoInitialize do
  it do
    s = EndDefault.new(1)
    s.a.should eq 1
    s.b.should eq 2
  end

  it do
    s = EndDefault.new(1, 3)
    s.a.should eq 1
    s.b.should eq 3
  end
end
