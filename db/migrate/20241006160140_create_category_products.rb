class CreateCategoryProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :category_products do |t|
      t.integer :product_id
      t.integer :catergory_id

      t.timestamps
    end
  end
end
