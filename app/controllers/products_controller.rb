class ProductsController < ApplicationController
  def display_all_products
    render json: Product.all.as_json
  end
  
  def display_product
    render json: Product.find(params[:id]).as_json
  end
end
