class OrdersController < ApplicationController

  before_action :authenticate_user
  before_action :authenticate_admin, except: [:index, :create, :show]

  def index
    render json: current_user.orders
  end

  def create     # THIS IS REALLY MESSY - there has to be a better way to do this (methods in Order model?)
    order = Order.new(
      user_id: current_user.id,
    )
    order.subtotal = current_user.calc_subtotal
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax
    order.save
    current_user.carted_products.where(status: "carted").update_all(status: "purchased", order_id: order.id)
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
