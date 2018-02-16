class AddPhoneToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :phone, :string
  end
end
