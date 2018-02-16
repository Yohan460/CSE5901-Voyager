class AddNamesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :fname, :string
    add_column :user, :lname, :string
  end
end
