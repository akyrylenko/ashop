class Delivery < ActiveRecord::Base
  attr_accessible :receiver_id, :state
end
