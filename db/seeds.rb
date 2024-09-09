# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# create_table "products", force: :cascade do |t|
#   t.string "name"
#   t.integer "price"
#   t.string "image_url"
#   t.text "description"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

Product.create(name: "Wave Brush", price: 18, image_url: "https://shop.frederickbenjamin.com/cdn/shop/products/360_Wave_Brush_1.jpg?v=1599793426&width=932", description: "360 Wave Brush - Medium, Curved & Palmed")

Product.create(name: "Wacom", price: 80, image_url: "https://m.media-amazon.com/images/I/61eG0iYBj+L._AC_SY300_SX300_.jpg", description: "Wacom Intuos Small Bluetooth Graphics Drawing Tablet")

Product.create(name: "Bevel Beard Trimmer", price: 180, image_url: "https://cdn11.bigcommerce.com/s-9f28jzowu1/images/stencil/1000w/products/130/472/800109-C_3__01950__29804__56674__00762.1622660026.386.513.jpg?c=1", description: "A crowd favorite — our tried and true Bevel Trimmer covers the basics and more, earning a permanent counter spot.")

Supplier.create()