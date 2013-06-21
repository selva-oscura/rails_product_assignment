class Comment < ActiveRecord::Base
  belongs_to :product
  attr_accessible :author, :content
  validates :author, :content, :product_id, :presence => true
end
