class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :Boat
      t.date :DeptDate
      t.date :ArrDate
      t.string :DeptPort
      t.string :ArrPort

      t.timestamps
    end
  end
end
