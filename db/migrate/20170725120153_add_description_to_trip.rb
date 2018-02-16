class AddDescriptionToTrip < ActiveRecord::Migration[5.1]
  def change
  		add_column :trips, :description, :string
  end
end
