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

ActiveRecord::Schema.define(version: 2019_12_23_191027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "inventories", force: :cascade do |t|
    t.bigint "item_entry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.index ["item_entry_id"], name: "index_inventories_on_item_entry_id"
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
    t.string "ip"
    t.string "subnet_mask"
    t.string "dns1"
    t.string "dns2"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "equipment", "category_equipments"
  add_foreign_key "equipment_points", "equipment"
  add_foreign_key "equipment_points", "points"
  add_foreign_key "inventories", "item_entries"
  add_foreign_key "item_entries", "equipment"
  add_foreign_key "item_entries", "suppliers"
  add_foreign_key "item_outputs", "equipment"
  add_foreign_key "item_outputs", "points"
end
