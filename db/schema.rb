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

ActiveRecord::Schema.define(version: 2021_11_30_033653) do

  create_table "buildings", force: :cascade do |t|
    t.string "building_name"
    t.integer "rent"
    t.string "address"
    t.integer "age_of_building"
    t.text "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nearest_stations", force: :cascade do |t|
    t.string "route_name"
    t.string "station_name"
    t.integer "walking_minitues"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "building_id"
    t.index ["building_id"], name: "index_nearest_stations_on_building_id"
  end

  add_foreign_key "nearest_stations", "buildings"
end
