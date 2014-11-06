class Comment < ActiveRecord::Base
  attr_accessible :comment_id, :description, :product_id, :rating, :subject, :user_id
end
