class CreateWatchtowerNotes < ActiveRecord::Migration
  def change
    create_table :watchtower_notes do |t|
      t.text :content
      t.references :user
      t.references :contact

      t.timestamps
    end
    add_index :watchtower_notes, :user_id
    add_index :watchtower_notes, :contact_id
  end
end
