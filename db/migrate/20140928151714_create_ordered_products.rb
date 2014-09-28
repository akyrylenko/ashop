class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.string :name
      t.integer :order_id

      t.timestamps
    end
  end
end
