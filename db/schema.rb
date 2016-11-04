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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161104004607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "football_all_irelands", force: :cascade do |t|
    t.string   "county"
    t.text     "description"
    t.integer  "winfirst"
    t.integer  "winlast"
    t.integer  "wintotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hurling_all_irelands", force: :cascade do |t|
    t.string   "county"
    t.text     "description"
    t.integer  "winfirst"
    t.integer  "winlast"
    t.integer  "wintotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "taoisigh", force: :cascade do |t|
    t.string   "name"
    t.string   "party"
    t.text     "description"
    t.text     "constituency"
    t.integer  "taoiseach_number"
    t.string   "taoiseach_start"
    t.string   "taoiseach_finish"
    t.string   "taoiseach_terms"
    t.string   "dail_elected"
    t.string   "dail_leave"
    t.string   "date_of_birth"
    t.string   "date_of_death"
    t.string   "image_url"
    t.string   "url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
