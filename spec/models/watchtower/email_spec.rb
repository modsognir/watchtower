require 'spec_helper'

describe Watchtower::Email do
  describe "#name" do
    it "defaults to 'Other'" do
      Watchtower::Email.new.name.should == "Other"
    end
  end
end
