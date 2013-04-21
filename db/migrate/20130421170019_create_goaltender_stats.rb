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
      t.timestamps
    end
  end
end
