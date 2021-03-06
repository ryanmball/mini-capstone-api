class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  def supplier_name
    supplier.name
  end

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 1..500 }
  validates :inventory, numericality: { greater_than: 0 }

  def is_discounted?
    price < 50
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    tax + price
  end

  scope :price_asc, ->(price) { order("price") if price == "asc"}
  scope :price_desc, ->(price) { order("price desc") if price == "desc"}
  scope :name_contains, ->(search) { where("name iLike ?", "%#{search}%") }
  scope :discounted, ->(discount) { where("price < ?", "50") if discount == "true" }
end
