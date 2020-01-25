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

ActiveRecord::Schema.define(version: 2020_01_25_055425) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.text "profile"
    t.string "place"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon"
  end

  create_table "posts", force: :cascade do |t|
    t.string "place"
    t.date "date"
    t.integer "mxpeople"
    t.text "requirement"
    t.text "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "company_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "college"
    t.string "grade"
    t.string "password"
    t.string "icon"
    t.text "profile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "belongs"
    t.string "college_name"
    t.integer "grade"
    t.string "icon"
    t.text "profile"
    t.string "place"
    t.string "HP"
    t.string "TEL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "userid"
  end

end
