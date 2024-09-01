class ProductsController < ApplicationController
  def index
    @Products = Product.all
    render template: "products/index"
  end

  def show
    # send an id in params
    # p params[:id]
    @product = Product.find_by(id: params[:id])
    # use that id to find a recipe
    # render that recipe
    render template: "products/show"
  end
end
