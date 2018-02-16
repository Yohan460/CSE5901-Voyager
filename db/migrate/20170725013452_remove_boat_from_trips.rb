class RemoveBoatFromTrips < ActiveRecord::Migration[5.1]
  def change
  	remove_column :trips, :Boat
  end
end
