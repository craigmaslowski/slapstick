class CreateSkaterstats < ActiveRecord::Migration
  def change
    create_table :skaterstats do |t|
      t.integer :number_of_games
      t.integer :goals
      t.integer :assists
      t.integer :plus_minus
      t.integer :hits
      t.integer :shots_on_goal
      t.integer :penalty_minutes
      t.references :player

      t.timestamps
    end
  end
end
