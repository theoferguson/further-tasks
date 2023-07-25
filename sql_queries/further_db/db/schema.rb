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

ActiveRecord::Schema[7.0].define(version: 2023_07_25_155635) do
  create_table "authors", force: :cascade do |t|
    t.string "first_name", limit: 100
    t.string "last_name", limit: 100
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_authors_on_country_id"
  end

  create_table "book_details", force: :cascade do |t|
    t.integer "book_id", null: false
    t.decimal "price", precision: 10, scale: 2
    t.decimal "discount", precision: 10, scale: 2
    t.boolean "is_hard_copy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_details_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title", limit: 255
    t.integer "author_id"
    t.integer "isbn", limit: 13
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
