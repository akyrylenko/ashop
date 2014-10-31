class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :receiver_id
      t.string :state

      t.timestamps
    end
  end
end
