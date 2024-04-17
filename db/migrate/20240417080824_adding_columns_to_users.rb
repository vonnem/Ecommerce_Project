class AddingColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :address, :string
    add_column :users, :province, :string
    add_column :users, :first_name, :string
  end
end
