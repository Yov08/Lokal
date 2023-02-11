# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_11_115850) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.integer "pax"
    t.boolean "booking_type"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_artists", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "date"
    t.string "venue"
    t.string "description"
    t.integer "price_normal"
    t.integer "price_vip"
    t.string "address"
    t.integer "capacity"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "user_type"
    t.string "image_url"
    t.string "category"
    t.string "biography"
    t.integer "rating"
    t.integer "hourly_rate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
