require "./spec_helper"

describe AutoInitialize do
  it { Simple.new(1).a.should eq 1 }
end
