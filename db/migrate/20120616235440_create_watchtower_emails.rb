class CreateWatchtowerEmails < ActiveRecord::Migration
  def change
    create_table :watchtower_emails do |t|
      t.string :name
      t.string :address
      t.boolean :primary
      t.references :contact

      t.timestamps
    end
  end
end
