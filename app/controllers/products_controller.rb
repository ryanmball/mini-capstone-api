class ProductsController < ApplicationController
  def index
    products = Product.all.price_asc(params[:price]).price_desc(params[:price]).name_contains(params[:search]).discounted(params[:discount]).order(:id)
    # uses scopes for price asc, price desc, name contains, and is discounted?
    # any combination of these query params seems to work and not break the code - this is really cool
    render json: products
  end
  
  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
    )
    if product.save
      if params[:url]
        Image.create(
        url: params[:url],
        product_id: product.id
        )
      end
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
      products: Product.all.order(:id)
    }
  end
end
