class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :in_stock, :inventory, :supplier_name, :image_url
end
