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

ActiveRecord::Schema.define(version: 20150303193307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "moves", force: true do |t|
    t.string    "name"
    t.integer   "type"
    t.integer   "pp"
    t.integer   "power"
    t.integer   "accuracy"
    t.integer   "category"
    t.integer   "damage"
    t.string    "description"
  end

  create_table "pokemons", force: true do |t|
    t.integer "number"
    t.string  "name"
    t.string  "species"
    t.integer "types",           default: [],                 array: true
    t.integer "abilities",       default: [],                 array: true
    t.integer "genderThreshold"
    t.integer "catchRate"
    t.integer "eggGroups",       default: [],                 array: true
    t.integer "hatchCounter"
    t.float   "height"
    t.float   "weight"
    t.integer "baseExpYield"
    t.integer "baseFriendship"
    t.integer "expGroup"
    t.integer "evYield",         default: [0, 0, 0, 0, 0, 0], array: true
    t.integer "bodyStyle"
    t.integer "color"
    t.integer "baseStats",       default: [0, 0, 0, 0, 0, 0], array: true
    t.text    "pokedexX"
    t.text    "pokedexY"
    t.text    "pokedexOR"
    t.text    "pokedexAS"
    t.json    "learnset"
    t.string  "form"
  end

end
