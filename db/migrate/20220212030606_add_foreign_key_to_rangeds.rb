class AddForeignKeyToRangeds < ActiveRecord::Migration[6.1]
  def change
    add_column :rangeds, :player_id, :integer
  end
end
