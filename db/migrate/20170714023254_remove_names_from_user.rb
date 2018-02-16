class RemoveNamesFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :user, :fname, :string
    remove_column :user, :lname, :string
  end
end
