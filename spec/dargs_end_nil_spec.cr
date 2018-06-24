require "./spec_helper"

describe AutoInitialize do
  it do 
    s = EndNil.new(a: 1)
    s.a.should eq 1
    s.b.should eq nil
  end

  it do 
    s = EndNil.new(a: 1, b: 3)
    s.a.should eq 1
    s.b.should eq 3
  end

  it do 
    s = EndNil.new(b: nil, a: 2)
    s.a.should eq 2
    s.b.should eq nil
  end
end
