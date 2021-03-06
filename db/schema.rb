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

ActiveRecord::Schema.define(version: 20170214213526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "answer"
    t.string   "answerable_type"
    t.integer  "answerable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["answerable_type", "answerable_id"], name: "index_answers_on_answerable_type_and_answerable_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.integer  "rating"
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "reputation"
    t.integer  "gold"
    t.integer  "silver"
    t.integer  "bronze"
    t.string   "job"
    t.string   "location"
    t.integer  "profile_views"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
