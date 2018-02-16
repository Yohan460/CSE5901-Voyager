class AddDefaultToBooked < ActiveRecord::Migration[5.1]
  def change
    change_column :rooms, :booked, :boolean, default: false
  end
end
