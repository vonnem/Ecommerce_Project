class ModifyLaptopColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :laptops, :processor_brand
    remove_column :laptops, :ssd
    rename_column :laptops, :hdd, :storage
    rename_column :laptops, :processor_name, :processor
    add_column :laptops, :gpu, :string
    add_column :laptops, :size, :decimal
  end
end
