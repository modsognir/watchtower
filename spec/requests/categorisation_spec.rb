require 'spec_helper'

describe 'Categorising a Contact' do
  it "can add a category to a contact" do
    contact = Watchtower::Contact.create!

    visit wtapp.contact_path(contact)

    fill_in "tag_name", with: "Bad News"

    click_button "Add"

    current_path.should == wtapp.contact_path(contact)

    contact.reload.tag_names.map(&:to_s).should include("bad news")
  end


  describe 'showing tags' do
    context 'tags index' do 
      it "can list a bunch of taggings" do
        contact = Watchtower::Contact.create!(first_name: "Jarold", last_name: "Frasarian")
        contact.tag_with("some tag")

        visit wtapp.tags_path

        click_link "some tag"

        page.should have_content("Jarold Frasarian")
      end
    end

    context 'contact show' do
      it "shows tags it has been tagged with" do
        contact = Watchtower::Contact.create!(first_name: "Jarold", last_name: "Frasarian")
        contact.tag_with("another tag")

        visit wtapp.contact_path(contact)

        within('.tags') do
          page.should have_content("another tag")
        end
      end
    end
  end

end