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

ActiveRecord::Schema.define(version: 20160806185645) do

  create_table "anesthetists", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "rg",                 limit: 255
    t.string   "cpf",                limit: 255
    t.string   "phone",              limit: 255
    t.string   "email",              limit: 255
    t.string   "address",            limit: 255
    t.integer  "address_number",     limit: 4
    t.string   "address_complement", limit: 255
    t.string   "district",           limit: 255
    t.string   "city",               limit: 255
    t.string   "postal_code",        limit: 255
    t.string   "state",              limit: 255
    t.text     "note",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "registration",       limit: 255
    t.string   "cellphone",          limit: 255
  end

  create_table "bedrooms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "health_insurances", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "kind",       limit: 255
    t.boolean  "status"
    t.integer  "version_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "health_insurances", ["version_id"], name: "index_health_insurances_on_version_id", using: :btree

  create_table "health_terminologies", force: :cascade do |t|
    t.integer  "code_tuss",        limit: 8
    t.string   "description_tuss", limit: 255
    t.integer  "measure",          limit: 4
    t.integer  "version_id",       limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "health_terminologies", ["version_id"], name: "index_health_terminologies_on_version_id", using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "kind",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "time_surgery"
    t.integer  "hospital_id",           limit: 4
    t.integer  "bedroom_id",            limit: 4
    t.integer  "patient_id",            limit: 4
    t.integer  "health_terminology_id", limit: 4
    t.integer  "surgeon_id",            limit: 4
    t.integer  "anesthetist_id",        limit: 4
    t.integer  "health_insurance_id",   limit: 4
    t.integer  "receipt_id",            limit: 4
    t.integer  "payment_method_id",     limit: 4
    t.integer  "payment_recipient_id",  limit: 4
    t.text     "note",                  limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "tuss2",                 limit: 4
    t.integer  "tuss3",                 limit: 4
    t.integer  "tuss4",                 limit: 4
    t.integer  "tuss5",                 limit: 4
    t.boolean  "via_unique2"
    t.boolean  "via_unique3"
    t.boolean  "via_unique4"
    t.boolean  "via_unique5"
    t.string   "registration",          limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "password",              limit: 255
    t.string   "plan",                  limit: 255
    t.string   "hospitalization",       limit: 255
  end

  add_index "maps", ["anesthetist_id"], name: "index_maps_on_anesthetist_id", using: :btree
  add_index "maps", ["bedroom_id"], name: "index_maps_on_bedroom_id", using: :btree
  add_index "maps", ["health_insurance_id"], name: "index_maps_on_health_insurance_id", using: :btree
  add_index "maps", ["health_terminology_id"], name: "index_maps_on_health_terminology_id", using: :btree
  add_index "maps", ["hospital_id"], name: "index_maps_on_hospital_id", using: :btree
  add_index "maps", ["patient_id"], name: "index_maps_on_patient_id", using: :btree
  add_index "maps", ["payment_method_id"], name: "index_maps_on_payment_method_id", using: :btree
  add_index "maps", ["payment_recipient_id"], name: "index_maps_on_payment_recipient_id", using: :btree
  add_index "maps", ["receipt_id"], name: "index_maps_on_receipt_id", using: :btree
  add_index "maps", ["surgeon_id"], name: "index_maps_on_surgeon_id", using: :btree

  create_table "on_duties", force: :cascade do |t|
    t.datetime "on_duty_date"
    t.integer  "anesthetist_id", limit: 4
    t.text     "note",           limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "end_time"
  end

  add_index "on_duties", ["anesthetist_id"], name: "index_on_duties_on_anesthetist_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "rg",                 limit: 255
    t.string   "cpf",                limit: 255
    t.string   "phone",              limit: 255
    t.string   "email",              limit: 255
    t.string   "address",            limit: 255
    t.integer  "address_number",     limit: 4
    t.string   "address_complement", limit: 255
    t.string   "district",           limit: 255
    t.string   "city",               limit: 255
    t.string   "postal_code",        limit: 255
    t.string   "state",              limit: 255
    t.text     "note",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "registration",       limit: 255
    t.string   "cellphone",          limit: 255
    t.integer  "age",                limit: 4
  end

  create_table "payment_maps", force: :cascade do |t|
    t.integer  "map_id",        limit: 4
    t.integer  "payment_id",    limit: 4
    t.datetime "payment_date"
    t.float    "payment_value", limit: 24
    t.float    "paid_value",    limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.datetime "pay_day"
    t.string   "recipient",     limit: 255
  end

  add_index "payment_maps", ["map_id"], name: "index_payment_maps_on_map_id", using: :btree

  create_table "payment_methods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "payment_recipients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "size_surgeries", force: :cascade do |t|
    t.integer  "health_insurance_id", limit: 4
    t.integer  "measure",             limit: 4
    t.float    "value_measure",       limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "size_surgeries", ["health_insurance_id"], name: "index_size_surgeries_on_health_insurance_id", using: :btree

  create_table "surgeons", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "rg",                 limit: 255
    t.string   "cpf",                limit: 255
    t.string   "phone",              limit: 255
    t.string   "email",              limit: 255
    t.string   "address",            limit: 255
    t.integer  "address_number",     limit: 4
    t.string   "address_complement", limit: 255
    t.string   "district",           limit: 255
    t.string   "city",               limit: 255
    t.string   "postal_code",        limit: 255
    t.string   "state",              limit: 255
    t.text     "note",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "registration",       limit: 255
    t.string   "cellphone",          limit: 255
  end

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
    t.string   "name",                   limit: 255
    t.integer  "role_id",                limit: 4
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "health_insurances", "versions"
  add_foreign_key "health_terminologies", "versions"
  add_foreign_key "maps", "anesthetists"
  add_foreign_key "maps", "bedrooms"
  add_foreign_key "maps", "health_insurances"
  add_foreign_key "maps", "health_terminologies"
  add_foreign_key "maps", "hospitals"
  add_foreign_key "maps", "patients"
  add_foreign_key "maps", "payment_methods"
  add_foreign_key "maps", "payment_recipients"
  add_foreign_key "maps", "receipts"
  add_foreign_key "maps", "surgeons"
  add_foreign_key "on_duties", "anesthetists"
  add_foreign_key "payment_maps", "maps"
  add_foreign_key "size_surgeries", "health_insurances"
  add_foreign_key "users", "roles"
end
