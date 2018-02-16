class RemoveBookedFromRoom < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :booked
  end
end
