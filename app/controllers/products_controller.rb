class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  # name, price (integer), image_url, and description.
  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description_url],

    )
    render :show
  end

  def show
    # send an id in params
    # p params[:id]
    @product = Product.find_by(id: params[:id])
    # use that id to find a recipe
    # render that recipe
    render template: "products/show"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description_url] || @product.description,
    )
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product has been successfully removed" }
  end
end
