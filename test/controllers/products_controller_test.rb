require "test_helper"

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
