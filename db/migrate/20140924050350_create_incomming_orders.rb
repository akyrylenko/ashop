class CreateIncommingOrders < ActiveRecord::Migration
  def change
    create_table :incomming_orders do |t|
      t.integer :seller_id

      t.timestamps
    end
  end
end
