class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity, :subtotal, :tax, :total, :user_id

  belongs_to :product
  # belongs_to :user
end
