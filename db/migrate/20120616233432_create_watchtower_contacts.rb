class CreateWatchtowerContacts < ActiveRecord::Migration
  def change
    create_table :watchtower_contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender

      t.timestamps
    end
  end
end
