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

ActiveRecord::Schema.define(version: 2020_01_02_123900) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_admins_on_deleted_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable", default: true
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_courses_on_deleted_at"
    t.index ["name"], name: "index_courses_on_name", unique: true
  end

  create_table "exams", force: :cascade do |t|
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable", default: true
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_exams_on_deleted_at"
  end

  create_table "subject_courses", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "course_id"
    t.integer "subject_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_subject_courses_on_deleted_at"
  end

  create_table "subject_exams", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_subject_exams_on_deleted_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "instruction"
    t.string "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable", default: true
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_subjects_on_deleted_at"
    t.index ["name"], name: "index_subjects_on_name", unique: true
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.decimal "score", precision: 2, scale: 1
    t.decimal "progress", precision: 3, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_user_courses_on_deleted_at"
  end

  create_table "user_exams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exam_id"
    t.decimal "score", precision: 2, scale: 1
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_user_exams_on_deleted_at"
  end

  create_table "user_subjects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subject_id"
    t.decimal "score"
    t.decimal "progress", precision: 3, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_user_subjects_on_deleted_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "phone"
    t.string "provider"
    t.string "uid"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
