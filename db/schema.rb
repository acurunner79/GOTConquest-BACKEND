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

ActiveRecord::Schema.define(version: 2022_02_18_224930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cavalries", force: :cascade do |t|
    t.integer "cav_attack"
    t.integer "cav_defense"
    t.integer "cav_health"
    t.integer "cav_attack_vs_player"
    t.integer "cav_defense_vs_player"
    t.integer "cav_health_vs_player"
    t.integer "cav_attack_vs_players_inf"
    t.integer "cav_attack_vs_players_ranged"
    t.integer "cav_attack_vs_players_cav"
    t.integer "cav_attack_vs_players_siege"
    t.integer "cav_defense_vs_players_cav"
    t.integer "cav_defense_vs_players_inf"
    t.integer "cav_defense_vs_players_ranged"
    t.integer "cav_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
  end

  create_table "infantries", force: :cascade do |t|
    t.integer "inf_attack"
    t.integer "inf_defense"
    t.integer "inf_health"
    t.integer "inf_attack_vs_player"
    t.integer "inf_defense_vs_player"
    t.integer "inf_health_vs_player"
    t.integer "inf_attack_vs_players_inf"
    t.integer "inf_attack_vs_players_range"
    t.integer "inf_attack_vs_players_cav"
    t.integer "inf_defense_vs_players_cav"
    t.integer "inf_defense_vs_players_inf"
    t.integer "inf_defense_vs_players_range"
    t.integer "inf_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "ingame_name"
    t.string "allegiance"
    t.integer "keep_level"
    t.integer "house_level"
    t.integer "power_level"
    t.integer "building_power"
    t.integer "research_power"
    t.integer "troop_power"
    t.integer "dragon_talent_power"
    t.integer "armory_power"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "rangeds", force: :cascade do |t|
    t.integer "ranged_attack"
    t.integer "ranged_defense"
    t.integer "ranged_health"
    t.integer "ranged_attack_vs_player"
    t.integer "ranged_defense_vs_player"
    t.integer "ranged_health_vs_player"
    t.integer "ranged_attack_vs_players_inf"
    t.integer "ranged_attack_vs_players_ranged"
    t.integer "ranged_attack_vs_players_cav"
    t.integer "ranged_attack_vs_players_siege"
    t.integer "ranged_defense_vs_players_cav"
    t.integer "ranged_defense_vs_players_inf"
    t.integer "ranged_defense_vs_players_ranged"
    t.integer "ranged_defense_vs_players_siege"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "users"
end
