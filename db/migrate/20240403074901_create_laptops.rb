class CreateLaptops < ActiveRecord::Migration[7.1]
  def change
    create_table :laptops do |t|
      t.string :laptop_name
      t.string :brand
      t.string :model
      t.float :price
      t.float :sale_price
      t.boolean :on_off_sale
      t.string :processor_brand
      t.string :processor_name
      t.integer :ram
      t.integer :ssd
      t.integer :hdd
      t.string :operating_system
      t.timestamps
    end
  end
end
