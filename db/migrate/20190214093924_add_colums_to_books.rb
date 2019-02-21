class AddColumsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    add_column :books, :price, :float
    add_column :books, :image_name, :string
    add_column :books, :description, :string
    add_column :books, :quantity, :decimal
  end
end
