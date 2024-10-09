class OrdersController < ApplicationController
  def index
    @order = Order.all
    @order = Order.where(user_id: 1)
    render :index
  end

  # def create
  #   @order = Order.create(
  #     user_id: 1,
  #     product_id: params[:product_id],
  #     quantity: params[:quantity],
  #     subtotal: params[:subtotal],
  #     tax: params[:tax],
  #     total: params[:total],
  #   )
  #   render :show
  # end

  # def create
  #   @order = Order.where(user_id: 1, CartedProduct.status: "carted")

  #   if CartedProduct.user_id[1] == "carted"
  #     subtotal = product_id * quantity
  #     total = subtotal + tax
  #   else
  #   end

  def create
    carted_products = CartedProduct.where(user_id: 1, status: "carted")

    if carted_products.exists?
      subtotal = 0
      tax_rate = 0.08

      carted_products.each do |carted_product|
        product = Product.find(carted_product.product_id)
        subtotal += product.price * carted_product.quantity
      end

      tax = subtotal * tax_rate
      total = subtotal + tax

      @order = Order.create(
        user_id: 1,
        subtotal: subtotal,
        tax: tax,
        total: total,
      )

      carted_products.update_all(status: "purchased", order_id: @order.id)
    else
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.change[:status]
    render json: { message: "order deleted successfully" }
  end
end
