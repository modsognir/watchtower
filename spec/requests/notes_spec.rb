require 'spec_helper'

describe 'Adding Notes' do
  it "can add a basic note" do
    contact = Watchtower::Contact.create!

    visit wtapp.contact_path(contact)

    fill_in "note_content", with: "Noted."

    click_button "Add Note"

    page.should have_content "Noted."

    current_path.should == wtapp.contact_path(contact)
  end
end