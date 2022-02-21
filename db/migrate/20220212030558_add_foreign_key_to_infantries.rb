class AddForeignKeyToInfantries < ActiveRecord::Migration[6.1]
  def change
    add_column :infantries, :player_id, :integer
  end
end
