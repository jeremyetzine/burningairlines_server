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

ActiveRecord::Schema.define(version: 2019_02_05_050106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", force: :cascade do |t|
    t.text "name"
    t.integer "rows"
    t.integer "cols"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "flight"
    t.date "date"
    t.text "to"
    t.text "from"
    t.integer "airplane_id"
    t.time "time"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.text "seat"
    t.integer "flight_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
