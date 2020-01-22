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

ActiveRecord::Schema.define(version: 2020_01_22_180938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hikingtrails", force: :cascade do |t|
    t.string "name"
    t.string "distance"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "longitude"
    t.integer "latitude"
    t.integer "views", default: 0
  end

  create_table "tags", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "hikingtrail_id", null: false
    t.boolean "kidfriendly", default: false, null: false
    t.boolean "dogfriendly", default: false, null: false
    t.boolean "wheelchairaccessible", default: false, null: false
    t.boolean "strollerfriendly", default: false, null: false
    t.boolean "fishing", default: false, null: false
    t.boolean "camping", default: false, null: false
    t.boolean "birdwatching", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hikingtrail_id"], name: "index_tags_on_hikingtrail_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
  end

  add_foreign_key "tags", "hikingtrails"
  add_foreign_key "tags", "users"
end
