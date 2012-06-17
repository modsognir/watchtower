class CreateWatchtowerTaggings < ActiveRecord::Migration
  def change
    create_table :watchtower_taggings do |t|
      t.references :contact
      t.references :tag

      t.timestamps
    end
    add_index :watchtower_taggings, :contact_id
    add_index :watchtower_taggings, :tag_id
  end
end
