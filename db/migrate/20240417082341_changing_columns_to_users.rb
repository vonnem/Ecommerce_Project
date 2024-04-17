class ChangingColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :province, :province_id
    change_column :users, :province_id, :integer
  end
end
