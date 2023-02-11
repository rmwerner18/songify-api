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

ActiveRecord::Schema.define(version: 2023_02_11_010659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chords", force: :cascade do |t|
    t.string "bass"
    t.string "name"
    t.string "quality"
    t.decimal "freqs", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "song_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playlist_songs", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "song_chords", force: :cascade do |t|
    t.integer "song_id"
    t.integer "chord_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer "bpm"
    t.string "instrument"
    t.string "melodyKey"
    t.string "melodyMode"
    t.integer "snareBeats", default: [], array: true
    t.integer "kickBeats", default: [], array: true
    t.integer "hhBeats", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "name"
    t.decimal "swing", precision: 2, scale: 2
    t.string "melodyInstrument"
    t.jsonb "iBeats", default: "{}", null: false
    t.jsonb "iiBeats", default: "{}", null: false
    t.jsonb "iiiBeats", default: "{}", null: false
    t.jsonb "ivBeats", default: "{}", null: false
    t.jsonb "vBeats", default: "{}", null: false
    t.jsonb "viBeats", default: "{}", null: false
    t.jsonb "viiBeats", default: "{}", null: false
    t.jsonb "IBeats", default: "{}", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
