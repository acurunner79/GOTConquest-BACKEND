class AddForeignKeyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :player_id, :integer
  end
end