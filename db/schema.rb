# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_11_14_142530) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "actions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.bigint "monster_id"
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_actions_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.json "actions", array: true
    t.string "alignment"
    t.string "armorClass"
    t.string "armorSource"
    t.string "challenge"
    t.integer "charisma"
    t.string "conditionImmunities"
    t.integer "constitution"
    t.datetime "created_at", precision: nil, null: false
    t.string "damageImmunities"
    t.string "damageResistances"
    t.string "damageVulnerabilities"
    t.integer "dexterity"
    t.string "hitDice"
    t.integer "hitPoints"
    t.integer "intelligence"
    t.string "languages"
    t.string "name"
    t.string "picture"
    t.string "savingThrows"
    t.string "senses"
    t.string "size"
    t.string "skills"
    t.string "speed"
    t.integer "strength"
    t.json "traits", array: true
    t.string "type"
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "user_id"
    t.integer "wisdom"
    t.index ["created_at"], name: "index_monsters_on_created_at"
    t.index ["user_id"], name: "index_monsters_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.bigint "monster_id"
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_reactions_on_monster_id"
  end

  create_table "traits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.bigint "monster_id"
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_traits_on_monster_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "confirmation_sent_at", precision: nil
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.string "unconfirmed_email"
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end
end
