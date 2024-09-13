class OrdersController < ApplicationController
  def index
    @order = Order.all
    @order = Order.where(user_id: current_user.id)
    render :index
  end

  def create
    @order = Orders.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    render :show
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end
end
