class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :supplier_name

  has_many :images
  # belongs_to :supplier
  has_many :categories
end
