class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :RoomID
      t.string :Size
      t.string :ContainingBoat
      t.float :Price

      t.timestamps
    end
  end
end
