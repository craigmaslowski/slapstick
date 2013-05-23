class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.integer :goals
      t.integer :assists
      t.integer :plus_minus
      t.integer :hits
      t.integer :shots_on_goal
      t.integer :penalty_minutes

      t.timestamps
    end
  end
end