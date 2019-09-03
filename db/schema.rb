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

ActiveRecord::Schema.define(version: 2019_09_02_233848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_equipments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_equipment_id"
    t.index ["category_equipment_id"], name: "index_equipment_on_category_equipment_id"
  end

  create_table "equipment_points", force: :cascade do |t|
    t.bigint "point_id"
    t.bigint "equipment_id"
    t.integer "fixed_assets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serial"
    t.string "brand"
    t.index ["equipment_id"], name: "index_equipment_points_on_equipment_id"
    t.index ["point_id"], name: "index_equipment_points_on_point_id"
  end

  create_table "item_entries", force: :cascade do |t|
    t.integer "quantity"
    t.integer "unit_value"
    t.integer "total_value"
    t.bigint "supplier_id"
    t.bigint "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "invoice_number"
    t.index ["equipment_id"], name: "index_item_entries_on_equipment_id"
    t.index ["supplier_id"], name: "index_item_entries_on_supplier_id"
  end

  create_table "item_outputs", force: :cascade do |t|
    t.string "item_name"
    t.date "departure_date"
    t.integer "quantity"
    t.string "point"
    t.integer "fixed_asset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "point_id"
    t.bigint "equipment_id"
    t.index ["equipment_id"], name: "index_item_outputs_on_equipment_id"
    t.index ["point_id"], name: "index_item_outputs_on_point_id"
  end

  create_table "points", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "vpn"
    t.string "co"
    t.string "anydesk"
    t.string "isp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "nit"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.string "contact_name"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipment", "category_equipments"
  add_foreign_key "equipment_points", "equipment"
  add_foreign_key "equipment_points", "points"
  add_foreign_key "item_entries", "equipment"
  add_foreign_key "item_entries", "suppliers"
  add_foreign_key "item_outputs", "equipment"
  add_foreign_key "item_outputs", "points"
end
