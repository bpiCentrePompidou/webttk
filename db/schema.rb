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

ActiveRecord::Schema.define(version: 20130926095048) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.integer  "status_id",      default: 1, null: false
    t.datetime "report_date",                null: false
    t.text     "description",                null: false
    t.integer  "created_by_id",              null: false
    t.integer  "notified_by_id",             null: false
    t.string   "equipment",                  null: false
    t.string   "application",                null: false
    t.text     "action"
    t.text     "next_action"
    t.text     "detailed_cause"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "closure_date"
    t.string   "detection"
    t.string   "app_status"
    t.integer  "category_id"
    t.text     "problem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",              default: "",    null: false
    t.string   "encrypted_password", default: "",    null: false
    t.string   "last_name"
    t.string   "first_name",                         null: false
    t.boolean  "admin",              default: false, null: false
    t.integer  "sign_in_count",      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end