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

ActiveRecord::Schema.define(version: 2019_12_04_044855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movings", force: :cascade do |t|
    t.integer "order_code", default: 0, null: false
    t.decimal "price", precision: 8, scale: 2, null: false
    t.decimal "count", precision: 8, scale: 2, null: false
    t.text "comment"
    t.integer "status", default: 0, null: false
    t.bigint "from_id"
    t.bigint "to_id"
    t.bigint "product_id"
    t.bigint "shipments_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_id"], name: "index_movings_on_from_id"
    t.index ["product_id"], name: "index_movings_on_product_id"
    t.index ["shipments_id"], name: "index_movings_on_shipments_id"
    t.index ["to_id"], name: "index_movings_on_to_id"
    t.index ["users_id"], name: "index_movings_on_users_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.text "comment"
    t.decimal "price", precision: 8, scale: 2, null: false
    t.decimal "count", precision: 8, scale: 2, null: false
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_id"], name: "index_shipments_on_products_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movings", "products"
  add_foreign_key "movings", "shipments", column: "shipments_id"
  add_foreign_key "movings", "users", column: "users_id"
  add_foreign_key "shipments", "products", column: "products_id"
end
