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

ActiveRecord::Schema.define(version: 20170606181458) do

  create_table "bookers", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "contact"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "castings", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "payment_type"
    t.string   "ubication"
    t.string   "casting_end"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "email"
    t.string   "identification"
    t.string   "address"
    t.string   "height"
    t.string   "weight"
    t.string   "hair"
    t.string   "eyes"
    t.string   "lips"
    t.string   "nose"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "date_of_birth"
    t.string   "gender"
    t.string   "disciplines"
    t.string   "city"
  end

  create_table "proyects", force: :cascade do |t|
    t.string   "name"
    t.string   "proyect_type"
    t.string   "director"
    t.integer  "client"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
