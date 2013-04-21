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

  create_table "goaltender_stats", :force => true do |t|
    t.integer  "games_played"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "goals_against"
    t.integer  "shots_against"
    t.integer  "saves"
    t.integer  "goals_against_average"
    t.integer  "shutouts"
    t.integer  "player_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "position_id"
    t.integer  "number"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "players", ["position_id"], :name => "index_players_on_position_id"

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skater_stats", :force => true do |t|
    t.integer  "number_of_games"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "plus_minus"
    t.integer  "hits"
    t.integer  "shots_on_goal"
    t.integer  "penalty_minutes"
    t.integer  "player_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "skater_stats", ["player_id"], :name => "ix_skater_stats_players"

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
