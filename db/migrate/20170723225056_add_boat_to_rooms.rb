class AddBoatToRooms < ActiveRecord::Migration[5.1]
  def change
  	remove_column :rooms, :ContainingBoat
    add_reference :rooms, :boat, foreign_key: true
  end
end
