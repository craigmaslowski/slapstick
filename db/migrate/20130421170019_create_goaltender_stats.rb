class CreateGoaltenderStats < ActiveRecord::Migration
  def change
    create_table :goaltender_stats do |t|
    	t.integer :games_played
    	t.integer :wins
    	t.integer :losses
    	t.integer :goals_against
    	t.integer :shots_against
    	t.integer :saves
    	t.integer :goals_against_average
    	t.integer :shutouts
      t.references :player
      t.timestamps
    end

    #add_index :goaltender_stats, :player_id, { :name => "ix_goaltender_stats_players" }
  end
end
