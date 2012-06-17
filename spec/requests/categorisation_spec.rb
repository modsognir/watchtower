require 'spec_helper'

describe 'Categorising a Contact' do
  it "can add a category to a contact" do
    contact = Watchtower::Contact.create!

    visit wtapp.contact_path(contact)

    fill_in "tag_name", with: "Bad News"

    click_button "Add"

    current_path.should == wtapp.contact_path(contact)

    contact.reload.tag_names.map(&:to_s).should include("Bad News")
  end

  it "can list a bunch of tags" do
    Tag.create(name: "Some Tag"

    visit wtapp.tags_path


  end
end