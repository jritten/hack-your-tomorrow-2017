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

ActiveRecord::Schema.define(version: 20171008080246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkings", force: :cascade do |t|
    t.string "name"
    t.string "account_type"
    t.string "current_balance"
    t.string "operating_company_identifier"
    t.string "product_code"
    t.string "primary_identifier"
    t.string "transaction_history"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_checkings_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "transfer_amount"
    t.integer "total_saved"
    t.integer "tokens"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "savings", force: :cascade do |t|
    t.string "name"
    t.string "account_type"
    t.string "operating_company_identifier"
    t.string "product_code"
    t.string "primary_identifier"
    t.string "transaction_history"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_savings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "legal_participant_identifier"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
