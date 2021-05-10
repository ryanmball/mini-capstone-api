class ProductsController < ApplicationController
  def index
    render json: Product.all.sort_by { |product| product[:id] }.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    product.save
    render json: product.as_json
  end
  
  def show
    render json: Product.find(params[:id]).as_json
  end
end
