class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :price
      t.references :maker, foreign_key: true
      t.timestamps
    end
  end
end
