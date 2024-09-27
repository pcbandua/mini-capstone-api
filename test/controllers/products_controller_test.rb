require "test_helper"

# create_table "products", force: :cascade do |t|
#   t.string "name"
#   t.integer "price"
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
  test "create" do
    assert_difference "Product.count", 1 do
      post "/product.json", params: {
                              name: "Glasses",
                              price: 90,
                              description: "helloooooooooo",
                            }
      assert_response 200
    end
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "description"]
  end

  test "update" do
    product = Product.first
    patch "/products/#{Product.id}.json", params
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["updated name", "name"]
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end
end

# tests for sad paths

# test "create" do
#   assert_difference "Product.count", 1 do
#     post "/products.json", params: { product: { name: "test", price: 10, "test.jpg", description: "test description" } }
#     assert_response 200
#   end

#   assert_difference "Product.count", 0 do
#     post "/products.json", params: {}
#     assert_response 422
#   end
# end

# test "update" do
#   product = Product.first
#   patch "/products/#{product.id}.json", params: { name: "Updated name" }
#   assert_response 200

#   data = JSON.parse(response.body)
#   assert_equal "Updated name", data["name"]
#   assert_equal product.price.to_s, data["price"]
#   assert_equal product.description, data["description"]

#   patch "/products/#{product.id}.json", params: { name: "" }
#   assert_response 422
# end
