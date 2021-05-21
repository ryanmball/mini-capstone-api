class OrdersController < ApplicationController
  def index
    if current_user
      render json: Order.where("user_id = #{current_user.id}")
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    if current_user
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
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    render json: Order.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    render json: { message: "Order successfully destroyed!" }
  end
end
