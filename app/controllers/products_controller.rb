class ProductsController < ApplicationController
  def index
    render json: Product.all.sort_by { |product| product[:id] }.as_json
  end
  
  def show
    render json: Product.find(params[:id]).as_json
  end
end
