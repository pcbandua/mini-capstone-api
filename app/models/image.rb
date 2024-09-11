class Image < ApplicationRecord
  belongs_to :product

  def product
    Product.find_by(product_id :id)
  end
end
