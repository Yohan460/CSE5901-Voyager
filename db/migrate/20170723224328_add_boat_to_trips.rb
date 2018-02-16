class AddBoatToTrips < ActiveRecord::Migration[5.1]
  def change
  	remove_column :trips, :boat
    add_reference :trips, :boat, foreign_key: true
  end
end
