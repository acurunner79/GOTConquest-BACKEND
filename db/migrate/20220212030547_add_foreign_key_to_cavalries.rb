class AddForeignKeyToCavalries < ActiveRecord::Migration[6.1]
  def change
    add_column :cavalries, :player_id, :integer
  end
end
