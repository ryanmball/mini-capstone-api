class ProductsController < ApplicationController
  def index
    render json: Product.all.sort_by { |product| product[:id] }
  end
  
  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      inventory: params[:inventory]
    )
    if product.save
      render json: product    # HAPPY PATH
    else
      render json: { errors: product.errors.full_messages }, status: 422   # SAD PATH
    end
  end
  
  def show
    render json: Product.find(params[:id])
  end
  
  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    if product.save
      render json: product    # HAPPY PATH
    else
      render json: { errors: product.errors.full_messages }, status: 422    # SAD PATH
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {
      message: "Product successfully destroyed!",
      products: Product.all.sort_by { |product| product[:id] }
    }
  end
end
