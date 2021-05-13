class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 1..500 }
  validates :inventory, numericality: { greater_than: 0 }
  validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file extension", :multiline => true

  def is_discounted?
    price < 50
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    tax + price
  end
end
