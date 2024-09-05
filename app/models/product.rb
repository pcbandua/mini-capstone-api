class Product < ApplicationRecord

  #SCHEMA
  # create_table "products", force: :cascade do |t|
  #   t.string "name"
  #   t.integer "price"
  #   t.string "image_url"
  #   t.text "description"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # • Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.

  # def is_discounted?
  # if  price <=10
  #   p true
  # else
  #   p false
  # end

  # end
  # • Create a model method called tax which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)

  # • Create a model method called total which will return the sum of the price + tax.

  # • Modify the products view template to display these model methods.

end
