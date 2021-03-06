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

ActiveRecord::Schema.define(version: 20161003114427) do

  create_table "categories", force: :cascade do |t|
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer  "monto",       limit: 4
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "ingreso",     limit: 4
  end

  create_table "months", force: :cascade do |t|
    t.string   "mes",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "precio",             limit: 4
    t.integer  "stock",              limit: 4
    t.string   "descripcion",        limit: 255
    t.integer  "category_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "nombre",      limit: 255
    t.string   "apellido",    limit: 255
    t.integer  "telefono",    limit: 4
    t.string   "email",       limit: 255
    t.string   "direccion",   limit: 255
    t.boolean  "sexo"
    t.time     "hora"
  end

  create_table "services", force: :cascade do |t|
    t.string   "tipo",               limit: 255
    t.integer  "precio",             limit: 4
    t.string   "descripcion",        limit: 255
    t.integer  "reservation_id",     limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  add_index "services", ["reservation_id"], name: "index_services_on_reservation_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "permission_level",       limit: 4
    t.integer  "roles_mask",             limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "products", "categories"
  add_foreign_key "services", "reservations"
end
