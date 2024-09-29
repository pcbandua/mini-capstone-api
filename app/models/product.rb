class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images

  # has_many :orders

  # def image
  #   Image.find_by(id: product_id)
  # end

  #   def supplier
  #     Supplier.find_by(id: supplier_id)
  #   end
  # end

  # • Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.

  def is_discounted?
    if price && price <= 10
      return true
    else
      return false
    end
  end

  def tax
    return 0 unless price
    price * 0.09
  end

  def total
    (tax || 0) + (price || 0)
  end
end

# end
# • Create a model method called tax which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)

# • Create a model method called total which will return the sum of the price + tax.

# • Modify the products view template to display these model methods.
