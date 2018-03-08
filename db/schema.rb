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

ActiveRecord::Schema.define(version: 20180308201748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.decimal "position_x"
    t.decimal "position_y"
    t.decimal "width"
    t.decimal "height"
    t.string "title"
    t.bigint "dashboard_id"
    t.bigint "data_source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_charts_on_dashboard_id"
    t.index ["data_source_id"], name: "index_charts_on_data_source_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_source_types", force: :cascade do |t|
    t.string "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_sources", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "db_server_name"
    t.string "db_name"
    t.string "table_name"
    t.bigint "data_source_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_source_type_id"], name: "index_data_sources_on_data_source_type_id"
  end

  create_table "database_fields", force: :cascade do |t|
    t.string "type"
    t.string "db_name"
    t.string "alias"
    t.bigint "data_source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_source_id"], name: "index_database_fields_on_data_source_id"
  end

  add_foreign_key "charts", "dashboards"
  add_foreign_key "charts", "data_sources"
  add_foreign_key "data_sources", "data_source_types"
  add_foreign_key "database_fields", "data_sources"
end
