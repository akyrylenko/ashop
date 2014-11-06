class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :subject
      t.string :description
      t.integer :comment_id
      t.integer :user_id
      t.integer :product_id
      t.integer :rating

      t.timestamps
    end
  end
end
