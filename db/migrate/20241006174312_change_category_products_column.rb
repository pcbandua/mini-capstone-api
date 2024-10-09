class ChangeCategoryProductsColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :category_products, :catergory_id, :category_id
  end
end
