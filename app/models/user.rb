class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :orders
  has_many :carted_products

  def calc_subtotal
    subtotal = 0
    carted_products.where(status: "carted").each do |carted|
      subtotal += (carted.product.price * carted.quantity)
    end
    subtotal
  end
end
