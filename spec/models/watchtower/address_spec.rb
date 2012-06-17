require 'spec_helper'

describe Watchtower::Address do
  describe "kind" do
    it "defaults to 'primary'" do
      Watchtower::Address.new.kind.should == "primary"
    end

    it "uses the kind field if present" do
      Watchtower::Address.new(kind: "something").kind.should == "something"
    end
  end
end
