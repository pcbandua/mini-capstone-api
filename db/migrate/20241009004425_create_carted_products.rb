class CreateCartedProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :carted_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.string :status
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
