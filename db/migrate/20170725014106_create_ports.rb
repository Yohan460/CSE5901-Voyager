class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.string :location
      t.string :country
      t.string :description

      t.timestamps
    end
  end
end
