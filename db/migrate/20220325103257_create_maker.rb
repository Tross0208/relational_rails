class CreateMaker < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :name
      t.boolean :usa_market?
      t.float :market_share
      t.timestamps
    end
  end
end
