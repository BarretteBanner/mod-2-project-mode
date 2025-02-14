# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_12_161807) do

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "dms", force: :cascade do |t|
    t.string "name"
    t.integer "user1"
    t.integer "user2"
    t.string "user1name"
    t.string "user2name"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "dm_id"
    t.integer "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "channel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "display_name"
    t.string "bio"
    t.integer "age"
    t.string "password_digest"
  end

end
