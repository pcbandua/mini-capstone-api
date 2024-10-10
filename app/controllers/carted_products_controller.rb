class CartedProductsController < ApplicationController
  # def index
  #   @carted_products = CartedProduct.all
  #   render :index

  # end

  # def index

  #   carted_items = []
  #   while current_user.id == 1
  #     @carted_products = CartedProduct.all
  #     @carted_products.find {|status| carted_product[:status]}
  #   carted_items <<
  #   end

  #   render :index
  # end

  def index
    @carted_products = CartedProduct.where(user_id: 1, status: "carted")
    render :index
  end

  def create
    @carted_products = CartedProduct.create(
      product_id: params[:product_id],
      user_id: 1,
      quantity: params[:quantity],
      status: "carted",
    )
    render :show
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.status = "removed"
    render json: { message: "order deleted successfully" }
  end
end
