require 'spec_helper'

describe Watchtower::Phone do
  it "returns itself" do
    Watchtower::Phone.new(content: "2081234").to_s.should == "2081234"
  end
end
