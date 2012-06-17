class CreateWatchtowerAddresses < ActiveRecord::Migration
  def change
    create_table :watchtower_addresses do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.string :name
      t.string :kind
      t.integer :contact_id

      t.timestamps
    end
  end
end
