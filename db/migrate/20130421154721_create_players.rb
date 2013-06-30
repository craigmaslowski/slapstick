class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.references :position
      t.integer :games_played
      t.integer :number
      t.string :image_url
      t.integer :team_member_id
      t.string :team_member_type

      t.references :team
      t.timestamps
    end

    add_index :players, :position_id
    add_index :players, [:team_member_id, :team_member_type], { :name => "ix_players_team_member_id_and_type" }
  end
end
