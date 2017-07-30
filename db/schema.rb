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

ActiveRecord::Schema.define(version: 20170720022843) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "waleedsajid41991@gmail.com", null: false
    t.string   "encrypted_password",     default: "mypassword",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "appointments", force: :cascade do |t|
    t.date     "appointmentdate"
    t.time     "startTime"
    t.string   "comment"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "pnumber"
    t.string   "patientname"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "doctors", force: :cascade do |t|
    t.string   "dname"
    t.string   "email"
    t.integer  "default_appoinment_duration"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "contact"
    t.integer  "NPI"
    t.boolean  "active"
    t.string   "speciality"
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "firm"
    t.decimal  "cost"
    t.string   "description"
    t.string   "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "meds", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "BOB"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "password"
    t.string   "pnumber"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "role"
    t.string   "pnumber"
    t.datetime "dob"
    t.string   "address"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
