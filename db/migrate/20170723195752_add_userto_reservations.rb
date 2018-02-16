class AddUsertoReservations < ActiveRecord::Migration[5.1]
  def change
  	remove_column :reservations, :user_email
  	add_reference :reservations, :user, index: true
  	add_foreign_key :reservations, :users
  end
end
