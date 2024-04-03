class RenameColumnsForCustomers < ActiveRecord::Migration[7.1]
  def change
    rename_column :customers, :firstName, :first_name
    rename_column :customers, :lastName, :last_name
  end
end
