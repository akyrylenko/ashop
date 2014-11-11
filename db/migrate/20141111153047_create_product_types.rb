class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.integer :parent_id
      t.integer :position

      t.timestamps
    end
  end
end
