class RemoveColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :carted_products, :price, :integer
  end
end
