class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :product_id
      t.decimal :price
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
