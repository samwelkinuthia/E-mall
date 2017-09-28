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

ActiveRecord::Schema.define(version: 20170914130656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "starting_date"
    t.date "ending_date"
    t.time "starting_time"
    t.time "ending_time"
    t.bigint "mall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "eventimage"
    t.index ["mall_id"], name: "index_events_on_mall_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "featureimage"
    t.bigint "mall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mall_id"], name: "index_features_on_mall_id"
  end

  create_table "mall_attachments", force: :cascade do |t|
    t.integer "mall_id"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malls", force: :cascade do |t|
    t.string "name"
    t.boolean "parking_space"
    t.text "description"
    t.text "email"
    t.integer "total_rooms"
    t.bigint "phone_no"
    t.time "opening_time"
    t.time "closing_time"
    t.boolean "rooms_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.string "mallpicture"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["room_id"], name: "index_products_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name", default: "room name"
    t.text "description", default: "room description"
    t.integer "room_number", default: 0
    t.float "area", default: 300.0
    t.string "wing", default: "Wing"
    t.integer "floor", default: 1
    t.time "opening_time", default: "2000-01-01 06:26:43"
    t.time "closing_time", default: "2000-01-01 06:26:43"
    t.bigint "phone", default: 0
    t.string "email", default: "room@gmail.com"
    t.string "facebook", default: "facebook.com"
    t.string "instagram", default: "room.instagram.com"
    t.string "twitter", default: "room.twitter.com"
    t.integer "rent", default: 0
    t.boolean "occupied", default: false
    t.bigint "mall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.string "storeimage"
    t.string "storeavatar"
    t.string "website"
    t.index ["mall_id"], name: "index_rooms_on_mall_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "store", default: false
    t.boolean "user", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "malls"
  add_foreign_key "features", "malls"
  add_foreign_key "products", "rooms"
  add_foreign_key "rooms", "malls"
end
