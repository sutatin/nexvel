# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160718141228) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "logoURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_items", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_scores", force: :cascade do |t|
    t.integer  "selected_evaluation_item_id"
    t.integer  "interest_id"
    t.integer  "score"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "interest_memos", force: :cascade do |t|
    t.integer  "interest_id"
    t.date     "date"
    t.text     "memo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "status"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "score"
  end

  create_table "selected_evaluation_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "evaluation_item_id"
    t.integer  "importance"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.string   "password_digest"
    t.string   "kind"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["tel"], name: "index_users_on_tel", unique: true

end
