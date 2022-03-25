class CreateMaker < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :name
      t.float :market_share
      t.boolean :usa_market?
    end
  end
end
