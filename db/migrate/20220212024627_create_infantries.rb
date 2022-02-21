class CreateInfantries < ActiveRecord::Migration[6.1]
  def change
    create_table :infantries do |t|
      t.integer :inf_attack
      t.integer :inf_defense
      t.integer :inf_health
      t.integer :inf_attack_vs_player
      t.integer :inf_defense_vs_player
      t.integer :inf_health_vs_player
      t.integer :inf_attack_vs_players_inf
      t.integer :inf_attack_vs_players_range
      t.integer :inf_attack_vs_players_cav
      t.integer :inf_defense_vs_players_cav
      t.integer :inf_defense_vs_players_inf
      t.integer :inf_defense_vs_players_range
      t.integer :inf_defense_vs_players_siege

      t.timestamps
    end
  end
end
