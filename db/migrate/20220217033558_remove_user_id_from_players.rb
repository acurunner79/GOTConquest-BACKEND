class RemoveUserIdFromPlayers < ActiveRecord::Migration[6.1]
  def change
    remove_column :players, :user_id, :integer
  end
end
