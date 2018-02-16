class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :reservations, :user, :user_email
  end
end
