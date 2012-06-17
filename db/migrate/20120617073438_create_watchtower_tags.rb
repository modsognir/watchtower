class CreateWatchtowerTags < ActiveRecord::Migration
  def change
    create_table :watchtower_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
