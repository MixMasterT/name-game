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

ActiveRecord::Schema.define(version: 2018_10_01_043050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "face_match_attempts", force: :cascade do |t|
    t.integer "delay"
    t.integer "target_user_id"
    t.bigint "user_id"
    t.bigint "photo_id"
    t.bigint "quiz_id"
    t.boolean "was_successful"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_face_match_attempts_on_photo_id"
    t.index ["quiz_id"], name: "index_face_match_attempts_on_quiz_id"
    t.index ["user_id"], name: "index_face_match_attempts_on_user_id"
  end

  create_table "name_guesses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "quiz_id"
    t.integer "target_user_id"
    t.string "guess"
    t.boolean "was_successful"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_name_guesses_on_quiz_id"
    t.index ["user_id"], name: "index_name_guesses_on_user_id"
  end

  create_table "name_match_attempts", force: :cascade do |t|
    t.boolean "was_successful"
    t.integer "delay"
    t.integer "target_user_id"
    t.bigint "quiz_id"
    t.bigint "user_id"
    t.bigint "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_name_match_attempts_on_photo_id"
    t.index ["quiz_id"], name: "index_name_match_attempts_on_quiz_id"
    t.index ["user_id"], name: "index_name_match_attempts_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "domain"
    t.string "link"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "user_id"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "type"
    t.integer "elapsed_time"
    t.bigint "user_id"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "face_match_attempts", "photos"
  add_foreign_key "face_match_attempts", "quizzes"
  add_foreign_key "face_match_attempts", "users"
  add_foreign_key "face_match_attempts", "users", column: "target_user_id"
  add_foreign_key "name_guesses", "quizzes"
  add_foreign_key "name_guesses", "users"
  add_foreign_key "name_guesses", "users", column: "target_user_id"
  add_foreign_key "name_match_attempts", "photos"
  add_foreign_key "name_match_attempts", "quizzes"
  add_foreign_key "name_match_attempts", "users"
  add_foreign_key "name_match_attempts", "users", column: "target_user_id"
  add_foreign_key "photos", "users"
  add_foreign_key "quizzes", "users"
end
