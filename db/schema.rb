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

ActiveRecord::Schema.define(version: 20151031163640) do

  create_table "anesthetists", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.integer  "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.integer  "postal_code"
    t.string   "state"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "bedrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "hospital_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bedrooms", ["hospital_id"], name: "index_bedrooms_on_hospital_id"

  create_table "health_insurances", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_terminologies", force: :cascade do |t|
    t.integer  "code_tuss"
    t.string   "description_tuss"
    t.string   "category_tuss"
    t.integer  "ch_surgeon"
    t.integer  "size"
    t.integer  "number_aux"
    t.integer  "version"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "time_surgery"
    t.integer  "hospital_id"
    t.integer  "bedroom_id"
    t.integer  "patient_id"
    t.integer  "health_terminology_id"
    t.integer  "surgeon_id"
    t.integer  "anesthetist_id"
    t.integer  "health_insurance_id"
    t.text     "note"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "maps", ["anesthetist_id"], name: "index_maps_on_anesthetist_id"
  add_index "maps", ["bedroom_id"], name: "index_maps_on_bedroom_id"
  add_index "maps", ["health_insurance_id"], name: "index_maps_on_health_insurance_id"
  add_index "maps", ["health_terminology_id"], name: "index_maps_on_health_terminology_id"
  add_index "maps", ["hospital_id"], name: "index_maps_on_hospital_id"
  add_index "maps", ["patient_id"], name: "index_maps_on_patient_id"
  add_index "maps", ["surgeon_id"], name: "index_maps_on_surgeon_id"

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.integer  "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.integer  "postal_code"
    t.string   "state"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "size_surgeries", force: :cascade do |t|
    t.integer  "health_insurance_id"
    t.integer  "size"
    t.float    "value"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "size_surgeries", ["health_insurance_id"], name: "index_size_surgeries_on_health_insurance_id"

  create_table "surgeons", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.integer  "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.integer  "postal_code"
    t.string   "state"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
