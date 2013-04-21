class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.references :position
      t.integer :number
      t.string :image_url

      t.timestamps
    end
    add_index :players, :position_id
  end
end
