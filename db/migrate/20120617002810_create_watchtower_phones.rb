class CreateWatchtowerPhones < ActiveRecord::Migration
  def change
    create_table :watchtower_phones do |t|
      t.string :number
      t.references :contact

      t.timestamps
    end
    add_index :watchtower_phones, :contact_id
  end
end
