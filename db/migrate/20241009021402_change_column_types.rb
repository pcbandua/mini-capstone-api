class ChangeColumnTypes < ActiveRecord::Migration[7.1]
  def change
    change_column :carted_products, :order_id, :integer
    change_column :carted_products, :product_id, :integer
    change_column :carted_products, :user_id, :integer
  end
end
