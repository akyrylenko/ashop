class Price < ActiveRecord::Base
  attr_accessible :active, :position, :price, :product_id
end
