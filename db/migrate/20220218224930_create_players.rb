class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :ingame_name
      t.string :allegiance
      t.integer :keep_level
      t.integer :house_level
      t.integer :power_level
      t.integer :building_power
      t.integer :research_power
      t.integer :troop_power
      t.integer :dragon_talent_power
      t.integer :armory_power
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
