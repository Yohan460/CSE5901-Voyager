class RenameRoomIDtoName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :rooms, :RoomID, :Name
  end
end
