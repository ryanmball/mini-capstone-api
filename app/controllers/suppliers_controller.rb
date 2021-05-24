class SuppliersController < ApplicationController

  before_action :authenticate_admin

  def index
    render json: Supplier.all.order(:id)
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    supplier.save
    render json: supplier
  end

  def show
    render json: Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.save
    render json: supplier
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy
    render json: {message: "Supplier successfully destroyed!"}
  end
end
