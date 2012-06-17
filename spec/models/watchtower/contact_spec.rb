require 'spec_helper'

describe Watchtower::Contact do
  describe "#full_name" do
    it "should display one name" do
      Watchtower::Contact.new(first_name: "Jarold").full_name.should == "Jarold"
    end
    
    it "should display two names" do
      Watchtower::Contact.new(first_name: "Jarold", last_name: "Frasarian").full_name.should == "Jarold Frasarian"
    end
    
    it "should display three names" do
      Watchtower::Contact.new(first_name: "Jarold", middle_name: "S", last_name: "Frasarian").full_name.should == "Jarold S Frasarian"
    end
  end

  describe "#emails.add" do
    it "should add a string" do
      contact = Watchtower::Contact.create!

      contact.emails.add("j.fraser@modsognir.com")
      contact.should have(1).emails
      contact.emails.first.to_s.should == "j.fraser@modsognir.com"
    end
  end

  describe "#phones.add" do
    it "should add a string" do
      contact = Watchtower::Contact.create!

      contact.phones.add("04209991111")
      contact.should have(1).phones
      contact.phones.first.to_s.should == "04209991111"
    end
  end

  describe "#primary_email" do
    contact = Watchtower::Contact.create!
    
    contact.emails << Watchtower::Email.new(content: "j.fraser@modsognir.com", primary: true)
    contact.emails << Watchtower::Email.new(content: "jared.fraser@modsognir.com")
    contact.save

    contact.primary_email.to_s.should == "j.fraser@modsognir.com"
  end
end
