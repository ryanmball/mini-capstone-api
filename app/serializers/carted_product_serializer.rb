class CartedProductSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :product

  # NEED TO UPDATE THIS USING INCLUDE - not displaying correctly

  # belongs_to :product
end
