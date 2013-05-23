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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130421171757) do

  create_table "goaltenders", :force => true do |t|
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "goals_against"
    t.integer  "shots_against"
    t.integer  "saves"
    t.integer  "save_percentage"
    t.integer  "goals_against_average"
    t.integer  "shutouts"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "position_id"
    t.integer  "games_played"
    t.integer  "number"
    t.string   "image_url"
    t.integer  "team_member_id"
    t.string   "team_member_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "players", ["position_id"], :name => "index_players_on_position_id"
  add_index "players", ["team_member_id", "team_member_type"], :name => "ix_players_team_member_id_and_type"

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skaters", :force => true do |t|
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "plus_minus"
    t.integer  "hits"
    t.integer  "shots_on_goal"
    t.integer  "penalty_minutes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "team_players", :force => true do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "team_players", ["player_id"], :name => "index_team_players_on_player_id"
  add_index "team_players", ["team_id"], :name => "index_team_players_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
