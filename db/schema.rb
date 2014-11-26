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

ActiveRecord::Schema.define(version: 20141124173749) do

  create_table "associes", force: true do |t|
    t.string   "pics"
    t.string   "name"
    t.text     "description", default: "", null: false
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.text     "texte1",     default: "", null: false
    t.text     "texte1en",   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honoraires", force: true do |t|
    t.text     "texte1",     default: "", null: false
    t.text     "texte1en",   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indices", force: true do |t|
    t.text     "texte1",     default: "", null: false
    t.text     "texte2",     default: "", null: false
    t.text     "texte3",     default: "", null: false
    t.text     "texte4",     default: "", null: false
    t.text     "texte5",     default: "", null: false
    t.text     "texte6",     default: "", null: false
    t.text     "texte7",     default: "", null: false
    t.text     "texte8",     default: "", null: false
    t.text     "texte9",     default: "", null: false
    t.text     "texte10",    default: "", null: false
    t.text     "texte11",    default: "", null: false
    t.text     "texte1en",   default: "", null: false
    t.text     "texte2en",   default: "", null: false
    t.text     "texte3en",   default: "", null: false
    t.text     "texte4en",   default: "", null: false
    t.text     "texte5en",   default: "", null: false
    t.text     "texte6en",   default: "", null: false
    t.text     "texte7en",   default: "", null: false
    t.text     "texte8en",   default: "", null: false
    t.text     "texte9en",   default: "", null: false
    t.text     "texte10en",  default: "", null: false
    t.text     "texte11en",  default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialites", force: true do |t|
    t.text     "texte1",     default: "", null: false
    t.text     "texte1en",   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "veilles", force: true do |t|
    t.string   "titre"
    t.text     "texte",      default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
