class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :position, :product_id
end
