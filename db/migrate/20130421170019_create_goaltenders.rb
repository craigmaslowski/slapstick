class CreateGoaltenders < ActiveRecord::Migration
  def change
    create_table :goaltenders do |t|
    	t.integer :wins
    	t.integer :losses
    	t.integer :goals_against
    	t.integer :shots_against
    	t.integer :saves
      t.integer :save_percentage
    	t.integer :goals_against_average
    	t.integer :shutouts

      t.timestamps
    end
  end
end
