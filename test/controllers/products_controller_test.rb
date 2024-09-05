require "test_helper"

# create_table "products", force: :cascade do |t|
#   t.string "name"
#   t.integer "price"
#   t.string "image_url"
#   t.text "description"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
end

# name, price (integer), image_url, and description.
test "create" do
  assert_difference "Product.count", 1 do
    post "/product.json", params: {
                            name: "Glasses",
                            price: 90,
                            image_url: "http://www.google.com", description: "helloooooooooo",
                          }
    assert_response 200
  end
end
