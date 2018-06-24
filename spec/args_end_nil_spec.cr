require "./spec_helper"

describe AutoInitialize do
  it do 
    s = EndNil.new(1)
    s.a.should eq 1
    s.b.should eq nil
  end

  it do 
    s = EndNil.new(1, 3)
    s.a.should eq 1
    s.b.should eq 3
  end
end
