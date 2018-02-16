class AddBookedToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :booked, :boolean
  end
end
