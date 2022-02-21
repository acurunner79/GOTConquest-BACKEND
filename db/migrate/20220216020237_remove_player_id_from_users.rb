class RemovePlayerIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :player_id, :integer
  end
end
