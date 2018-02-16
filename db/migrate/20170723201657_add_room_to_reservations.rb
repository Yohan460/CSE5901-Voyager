class AddRoomToReservations < ActiveRecord::Migration[5.1]
  def change
  	remove_column :reservations, :room
    add_reference :reservations, :room, foreign_key: true
  end
end
