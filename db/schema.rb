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

ActiveRecord::Schema.define(version: 2022_01_22_160019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "le_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rating"
    t.string "chef_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurant2s", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rating"
    t.string "chef_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.bigint "le_restaurants_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["le_restaurants_id"], name: "index_reviews_on_le_restaurants_id"
  end

  create_table "reviews2s", force: :cascade do |t|
    t.string "content"
    t.bigint "restaurant2s_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant2s_id"], name: "index_reviews2s_on_restaurant2s_id"
  end

  add_foreign_key "reviews", "le_restaurants", column: "le_restaurants_id"
  add_foreign_key "reviews2s", "restaurant2s", column: "restaurant2s_id"
end
