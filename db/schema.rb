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

ActiveRecord::Schema.define(version: 20180131152156) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.text "annotations"
    t.integer "patient_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultations", force: :cascade do |t|
    t.integer "patient_id"
    t.text "motivo"
    t.datetime "fecha"
    t.text "diagnostico"
    t.text "anotaciones"
    t.text "tratamiento"
    t.text "sintomas"
    t.text "antecedentes"
    t.text "receta"
    t.text "examen_fisico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "medical_histories", force: :cascade do |t|
    t.integer "weight"
    t.decimal "size"
    t.text "alergies"
    t.text "medicines"
    t.text "diseases"
    t.integer "user_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_medical_histories_on_patient_id"
    t.index ["user_id"], name: "index_medical_histories_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.integer "age"
    t.string "sex", default: "Masculino"
    t.string "departament"
    t.string "city"
    t.string "country", default: "Guatemala"
    t.string "email"
    t.string "phone"
    t.string "state", default: "active"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight"
    t.string "size"
    t.text "allergies"
    t.text "medicines"
    t.text "diseases"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "likes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "specialty", default: "general"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
