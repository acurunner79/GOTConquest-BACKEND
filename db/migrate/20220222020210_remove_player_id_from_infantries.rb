class RemovePlayerIdFromInfantries < ActiveRecord::Migration[6.1]
  def change
    remove_column :infantries, :player_id, :integer
  end
end
