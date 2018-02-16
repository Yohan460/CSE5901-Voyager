class AddTripToReservations < ActiveRecord::Migration[5.1]
  def change
  	remove_column :reservations, :trip
    add_reference :reservations, :trip, foreign_key: true
  end
end
