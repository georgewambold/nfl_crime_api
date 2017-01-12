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

ActiveRecord::Schema.define(version: 20170111183746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crime_categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crime_categories_crimes", id: false, force: :cascade do |t|
    t.integer "crime_id",          null: false
    t.integer "crime_category_id", null: false
    t.index ["crime_category_id"], name: "index_crime_categories_crimes_on_crime_category_id", using: :btree
    t.index ["crime_id"], name: "index_crime_categories_crimes_on_crime_id", using: :btree
  end

  create_table "crimes", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "position_id"
    t.integer  "legal_encounter_id"
    t.string   "description"
    t.string   "outcome"
    t.datetime "date_of_incident"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["legal_encounter_id"], name: "index_crimes_on_legal_encounter_id", using: :btree
    t.index ["player_id"], name: "index_crimes_on_player_id", using: :btree
    t.index ["position_id"], name: "index_crimes_on_position_id", using: :btree
    t.index ["team_id"], name: "index_crimes_on_team_id", using: :btree
  end

  create_table "legal_encounters", force: :cascade do |t|
    t.string   "encounter_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_code"
    t.string   "team_name"
    t.string   "team_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
