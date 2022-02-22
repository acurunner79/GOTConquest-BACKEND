class AddForeignKeyToInfantries2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :infantries, :player, null: false, foreign_key: true
  end
end
