class CreateCavalries < ActiveRecord::Migration[6.1]
  def change
    create_table :cavalries do |t|
      t.integer :cav_attack
      t.integer :cav_defense
      t.integer :cav_health
      t.integer :cav_attack_vs_player
      t.integer :cav_defense_vs_player
      t.integer :cav_health_vs_player
      t.integer :cav_attack_vs_players_inf
      t.integer :cav_attack_vs_players_ranged
      t.integer :cav_attack_vs_players_cav
      t.integer :cav_attack_vs_players_siege
      t.integer :cav_defense_vs_players_cav
      t.integer :cav_defense_vs_players_inf
      t.integer :cav_defense_vs_players_ranged
      t.integer :cav_defense_vs_players_siege

      t.timestamps
    end
  end
end
