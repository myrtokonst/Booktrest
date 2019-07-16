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

ActiveRecord::Schema.define(version: 2019_07_08_115310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookfolds", force: :cascade do |t|
    t.bigint "folder_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_bookfolds_on_book_id"
    t.index ["folder_id"], name: "index_bookfolds_on_folder_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "description"
    t.integer "rating"
    t.string "genre"
    t.string "ISBN"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usebooks", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_usebooks_on_book_id"
    t.index ["user_id"], name: "index_usebooks_on_user_id"
  end

  create_table "usefolds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "folder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_usefolds_on_folder_id"
    t.index ["user_id"], name: "index_usefolds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookfolds", "books"
  add_foreign_key "bookfolds", "folders"
  add_foreign_key "usebooks", "books"
  add_foreign_key "usebooks", "users"
  add_foreign_key "usefolds", "folders"
  add_foreign_key "usefolds", "users"
end
