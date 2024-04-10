class AddColumnToLaptops < ActiveRecord::Migration[7.1]
  def change
    add_column :laptops, :description, :text
  end
end
