class AddPortToTrip < ActiveRecord::Migration[5.1]
  def change
  	remove_column :trips, :ArrPort
  	remove_column :trips, :DeptPort
	add_reference :trips, :ArrPort, references: :ports, index: true
	add_reference :trips, :DeptPort, references: :ports, index: true
  end
end
