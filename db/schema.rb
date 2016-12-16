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

ActiveRecord::Schema.define(version: 20161216102159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "about_sections", force: :cascade do |t|
    t.string   "path"
    t.string   "nav"
    t.text     "content"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.hstore   "nav_translations"
    t.hstore   "content_translations"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "section"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.hstore   "section_translations"
  end

  create_table "donations", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.hstore   "content_translations"
  end

  create_table "exhibits", force: :cascade do |t|
    t.string   "location"
    t.text     "content"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "info_image_id"
    t.hstore   "content_translations"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "kid_id"
    t.string   "file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kid_id"], name: "index_images_on_kid_id", using: :btree
  end

  create_table "kids", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "short"
    t.text     "content"
    t.string   "video"
    t.hstore   "content_translations"
    t.index ["project_id"], name: "index_kids_on_project_id", using: :btree
  end

  create_table "partners", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "logo_id"
  end

  create_table "projects", force: :cascade do |t|
    t.date     "year"
    t.string   "country"
    t.string   "city"
    t.string   "slum"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "content"
    t.hstore   "content_translations"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "origin"
    t.text     "content"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "profile_image_id"
    t.hstore   "origin_translations"
    t.hstore   "content_translations"
  end

  add_foreign_key "images", "kids"
  add_foreign_key "kids", "projects"
end
