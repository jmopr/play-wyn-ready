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


ActiveRecord::Schema.define(version: 20160222183244) do

ActiveRecord::Schema.define(version: 20160223011200) do


  create_table "chats", force: :cascade do |t|
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "game_id"
  end

  add_index "chats", ["game_id"], name: "index_chats_on_game_id"

  create_table "games", force: :cascade do |t|
    t.string   "sport"
    t.string   "address"
    t.string   "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "caption"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "user_games", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_games", ["game_id"], name: "index_user_games_on_game_id"
  add_index "user_games", ["user_id"], name: "index_user_games_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "chat_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
