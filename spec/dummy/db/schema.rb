# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120617073438) do

  create_table "watchtower_addresses", :force => true do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postcode"
    t.string   "name"
    t.string   "kind"
    t.integer  "contact_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "watchtower_contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "watchtower_data", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.string   "type"
    t.boolean  "primary"
    t.integer  "contact_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "watchtower_notes", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "contact_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "watchtower_notes", ["contact_id"], :name => "index_watchtower_notes_on_contact_id"
  add_index "watchtower_notes", ["user_id"], :name => "index_watchtower_notes_on_user_id"

  create_table "watchtower_taggings", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "watchtower_taggings", ["contact_id"], :name => "index_watchtower_taggings_on_contact_id"
  add_index "watchtower_taggings", ["tag_id"], :name => "index_watchtower_taggings_on_tag_id"

  create_table "watchtower_tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
