class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :Name
      t.integer :NumberOfRooms

      t.timestamps
    end
  end
end
