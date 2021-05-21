class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  def calc_subtotal
    product.price * quantity
  end

  def calc_tax
    subtotal * 0.09
  end

  def calc_total
    subtotal + tax
  end
end
