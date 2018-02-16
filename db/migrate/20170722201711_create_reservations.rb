class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :user
      t.integer :room
      t.integer :trip

      t.timestamps
    end
  end
end
