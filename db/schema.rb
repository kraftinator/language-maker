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

ActiveRecord::Schema.define(version: 20170114205645) do

  create_table "constructed_languages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "constructed_word_sources", force: :cascade do |t|
    t.integer "constructed_word_id", limit: 4
    t.integer "natural_word_id",     limit: 4
  end

  create_table "constructed_words", force: :cascade do |t|
    t.integer  "constructed_language_id", limit: 4
    t.integer  "word_id",                 limit: 4
    t.string   "text",                    limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "natural_language_families", force: :cascade do |t|
    t.integer "parent_id", limit: 4
    t.string  "name",      limit: 255
    t.string  "code",      limit: 255
    t.string  "url",       limit: 255
  end

  create_table "natural_languages", force: :cascade do |t|
    t.string  "name",                       limit: 255
    t.string  "code",                       limit: 255
    t.boolean "active"
    t.integer "natural_language_family_id", limit: 4
    t.string  "url",                        limit: 255
  end

  create_table "natural_words", force: :cascade do |t|
    t.integer  "word_id",             limit: 4
    t.integer  "natural_language_id", limit: 4
    t.string   "text",                limit: 255
    t.string   "original_text",       limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "word_types", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "words", force: :cascade do |t|
    t.integer  "natural_language_id", limit: 4
    t.integer  "word_type_id",        limit: 4
    t.string   "text",                limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
