class CreateRangeds < ActiveRecord::Migration[6.1]
  def change
    create_table :rangeds do |t|
      t.integer :ranged_attack
      t.integer :ranged_defense
      t.integer :ranged_health
      t.integer :ranged_attack_vs_player
      t.integer :ranged_defense_vs_player
      t.integer :ranged_health_vs_player
      t.integer :ranged_attack_vs_players_inf
      t.integer :ranged_attack_vs_players_ranged
      t.integer :ranged_attack_vs_players_cav
      t.integer :ranged_attack_vs_players_siege
      t.integer :ranged_defense_vs_players_cav
      t.integer :ranged_defense_vs_players_inf
      t.integer :ranged_defense_vs_players_ranged
      t.integer :ranged_defense_vs_players_siege

      t.timestamps
    end
  end
end
