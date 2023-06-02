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

ActiveRecord::Schema[7.0].define(version: 2023_06_02_090913) do
  create_table "openai_accounts", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "openai_api_keys", force: :cascade do |t|
    t.integer "openai_account_id", null: false
    t.string "constent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["openai_account_id"], name: "index_openai_api_keys_on_openai_account_id"
  end

  create_table "openai_chats", force: :cascade do |t|
    t.integer "openai_api_key_id", null: false
    t.string "name"
    t.text "prompt"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["openai_api_key_id"], name: "index_openai_chats_on_openai_api_key_id"
  end

  add_foreign_key "openai_api_keys", "openai_accounts"
  add_foreign_key "openai_chats", "openai_api_keys"
end
