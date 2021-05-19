class Supplier < ApplicationRecord
  has_many :products

  def list_products
    products.map { |product| product[:name] }
  end
end
