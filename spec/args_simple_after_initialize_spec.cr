require "./spec_helper"

describe AutoInitialize do
  it do 
    s = SimpleAfterInitialize.new(1)
    s.a.should eq 1
    s.b.should eq 2
  end

  it do 
    s = SimpleAfterInitialize.new(1, 3)
    s.a.should eq 1
    s.b.should eq 2
  end

  it do 
    s = SimpleAfterInitialize.new(2, nil)
    s.a.should eq 2
    s.b.should eq 3
  end
end
