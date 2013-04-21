class CreateTeamPlayers < ActiveRecord::Migration
  def change
    create_table :team_players do |t|
      t.references :team
      t.references :player

      t.timestamps
    end
    add_index :team_players, :team_id
    add_index :team_players, :player_id
  end
end
