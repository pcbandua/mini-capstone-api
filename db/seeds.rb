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
#   t.text "description"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

Product.create(name: "Wave Brush", price: 18, description: "360 Wave Brush - Medium, Curved & Palmed")

Product.create(name: "Wacom", price: 80, description: "Wacom Intuos Small Bluetooth Graphics Drawing Tablet")

Product.create(name: "Bevel Beard Trimmer", price: 180, description: "A crowd favorite — our tried and true Bevel Trimmer covers the basics and more, earning a permanent counter spot.")

Supplier.create()
