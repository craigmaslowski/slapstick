class CreateSkaterStats < ActiveRecord::Migration
  def change
    create_table :skater_stats do |t|
      t.integer :games_played
      t.integer :goals
      t.integer :assists
      t.integer :plus_minus
      t.integer :hits
      t.integer :shots_on_goal
      t.integer :penalty_minutes
      t.references :player

      t.timestamps
    end

    add_index :skater_stats, :player_id, { :name => "ix_skater_stats_players" }
  end
end