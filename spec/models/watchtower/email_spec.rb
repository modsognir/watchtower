require 'spec_helper'

describe Watchtower::Email do
  describe "#name" do
    it "defaults to 'Other'" do
      Watchtower::Email.new.name.should == "other"
    end
  end
end
