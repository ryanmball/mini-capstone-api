class OrdersController < ApplicationController

  before_action :authenticate_user
  before_action :authenticate_admin, except: [:index, :create, :show]

  def index
    render json: current_user.orders
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    order.save
    order.subtotal = order.calc_subtotal
    order.tax = order.calc_tax
    order.total = order.calc_total
    order.save
    render json: order
  end

  def show
    render json: current_user.orders.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    render json: { message: "Order successfully destroyed!" }
  end
end
