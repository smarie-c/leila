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
    t.text     "description", null: false
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.text     "contenu",    null: false
    t.text     "contenuen",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honoraires", force: true do |t|
    t.text     "contenu",    null: false
    t.text     "contenuen",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indices", force: true do |t|
    t.text     "firstname",   null: false
    t.text     "name",        null: false
    t.text     "street",      null: false
    t.text     "cp",          null: false
    t.text     "city",        null: false
    t.text     "phone",       null: false
    t.text     "fax",         null: false
    t.text     "mobile",      null: false
    t.text     "titre1",      null: false
    t.text     "contenu1",    null: false
    t.text     "titre2",      null: false
    t.text     "contenu2",    null: false
    t.text     "titre3",      null: false
    t.text     "contenu3",    null: false
    t.text     "titre4",      null: false
    t.text     "contenu4",    null: false
    t.text     "titre5",      null: false
    t.text     "contenu5",    null: false
    t.text     "firstnameen", null: false
    t.text     "nameen",      null: false
    t.text     "streeten",    null: false
    t.text     "cpen",        null: false
    t.text     "cityen",      null: false
    t.text     "phoneen",     null: false
    t.text     "faxen",       null: false
    t.text     "mobileen",    null: false
    t.text     "titre1en",    null: false
    t.text     "contenu1en",  null: false
    t.text     "titre2en",    null: false
    t.text     "contenu2en",  null: false
    t.text     "titre3en",    null: false
    t.text     "contenu3en",  null: false
    t.text     "titre4en",    null: false
    t.text     "contenu4en",  null: false
    t.text     "titre5en",    null: false
    t.text     "contenu5en",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialites", force: true do |t|
    t.text     "contenu",    null: false
    t.text     "contenuen",  null: false
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
    t.string   "titre",                    null: false
    t.text     "texte",       default: "", null: false
    t.integer  "veille_type",              null: false
    t.string   "langue",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
