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

ActiveRecord::Schema.define(version: 2018_10_08_205032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_producers_on_name", unique: true
  end

  create_table "product_infos", force: :cascade do |t|
    t.string "product_id"
    t.string "photo_url"
    t.string "barcode"
    t.string "sku"
    t.integer "price_cents"
    t.datetime "scheduled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_infos_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "producer_id"], name: "index_products_on_name_and_producer_id", unique: true
  end

end
