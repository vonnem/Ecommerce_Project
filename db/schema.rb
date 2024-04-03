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

ActiveRecord::Schema[7.1].define(version: 2024_04_03_074901) do
  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

  create_table "laptops", force: :cascade do |t|
    t.string "laptop_name"
    t.string "brand"
    t.string "model"
    t.float "price"
    t.float "sale_price"
    t.boolean "on_off_sale"
    t.string "processor_brand"
    t.string "processor_name"
    t.integer "ram"
    t.integer "ssd"
    t.integer "hdd"
    t.string "operating_system"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "region_name"
    t.float "tax_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
