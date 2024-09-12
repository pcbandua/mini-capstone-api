class OrderController < ApplicationController
  def create
    @order = Orders.create(
      user_id: params[:user_id],
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
