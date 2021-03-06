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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131215184016) do

  create_table "beers", force: true do |t|
    t.string   "name"
    t.string   "brewery"
    t.string   "style"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "abv"
    t.text     "notes"
  end

  create_table "user_beers", force: true do |t|
    t.integer  "beer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_beers", ["beer_id"], name: "index_user_beers_on_beer_id"
  add_index "user_beers", ["user_id"], name: "index_user_beers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
