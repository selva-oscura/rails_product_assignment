class Product < ActiveRecord::Base
  attr_accessible :description, :name, :pricing, :category_id
  validates :name, :description, :pricing, :category_id, :presence => true
  belongs_to :category
  has_many :comments
end
