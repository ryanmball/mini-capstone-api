class CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    if current_user.carted_products.where(status: "carted").empty?
      render json: { message: "Your shopping cart is empty" }
    else
      render json: current_user.carted_products.where(status: "carted").order(:id)
    end
  end
  
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    carted_product.save
    render json: carted_product
  end
end
