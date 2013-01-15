require 'spec_helper'

describe 'Showing Custom Data' do
  it "shows any existing custom data fields" do
    contact = Watchtower::Contact.create!
    contact.custom_data.create!(name: "Test Field", content: "Test Data")

    visit wtapp.contact_path(contact)

    within("#custom_data_test-field") do
      page.should have_content("Test Field")
      page.should have_content("Test Data")
    end

  end
end