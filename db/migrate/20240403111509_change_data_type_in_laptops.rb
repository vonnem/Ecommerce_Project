class ChangeDataTypeInLaptops < ActiveRecord::Migration[7.1]
  def change
    change_column :laptops, :storage, :string
    change_column :laptops, :ram, :string
  end
end
