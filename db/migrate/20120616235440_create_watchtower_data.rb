class CreateWatchtowerData < ActiveRecord::Migration
  def change
    create_table :watchtower_data do |t|
      t.string :name
      t.string :content
      t.string :type
      t.boolean :primary
      t.references :contact

      t.timestamps
    end
  end
end
