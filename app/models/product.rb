class Product < ActiveRecord::Base
  has_many :customer_products
  has_many :product_sold ,through: :customer_products, source: :customer
  validates :name , presence: true
end
