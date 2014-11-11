class ProductType < ActiveRecord::Base
  attr_accessible :name, :parent_id, :position
end
