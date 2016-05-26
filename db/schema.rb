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

ActiveRecord::Schema.define(version: 20160526161739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "names"
    t.string   "lastnames"
    t.string   "email"
    t.string   "password"
    t.boolean  "is_deleted", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "advertisements", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "text_position",  default: 0
    t.string   "url_info"
    t.string   "background_img"
    t.string   "main_img"
    t.boolean  "is_visible",     default: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "is_permanent",   default: true
    t.datetime "start_at"
    t.datetime "end_at"
  end

  create_table "blog_categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "admin_id"
    t.integer  "order_int",          default: 1
    t.integer  "blog_entries_count", default: 0
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "blog_categories", ["admin_id"], name: "index_blog_categories_on_admin_id", using: :btree

  create_table "blog_entries", force: :cascade do |t|
    t.integer  "admin_id"
    t.string   "title"
    t.string   "intro"
    t.text     "content"
    t.string   "previus_img"
    t.boolean  "is_deleted",  default: false
    t.integer  "count_view",  default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "blog_entries", ["admin_id"], name: "index_blog_entries_on_admin_id", using: :btree

  create_table "capsules", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "link_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin_id"
  end

  add_index "capsules", ["admin_id"], name: "index_capsules_on_admin_id", using: :btree

  add_foreign_key "blog_categories", "admins"
  add_foreign_key "blog_entries", "admins"
  add_foreign_key "capsules", "admins"
end
