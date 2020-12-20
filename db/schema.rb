# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_20_120707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activités", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discussions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "groupe_id", null: false
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_discussions_on_groupe_id"
    t.index ["user_id"], name: "index_discussions_on_user_id"
  end

  create_table "groupes", force: :cascade do |t|
    t.integer "organisation_id"
    t.integer "activité_id"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activité_id"], name: "index_groupes_on_activité_id"
    t.index ["organisation_id"], name: "index_groupes_on_organisation_id"
  end

  create_table "groupes_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "groupe_id", null: false
    t.index ["groupe_id", "user_id"], name: "index_groupes_users_on_groupe_id_and_user_id"
    t.index ["user_id", "groupe_id"], name: "index_groupes_users_on_user_id_and_groupe_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sorties", force: :cascade do |t|
    t.bigint "groupe_id", null: false
    t.datetime "le"
    t.string "lieu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groupe_id"], name: "index_sorties_on_groupe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organisation_id"
    t.boolean "admin"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organisation_id"], name: "index_users_on_organisation_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "discussions", "groupes"
  add_foreign_key "discussions", "users"
  add_foreign_key "sorties", "groupes"
end
