class RenameRegionsToProvince < ActiveRecord::Migration[7.1]
  def change
    rename_table :regions, :provinces
    remove_column :provinces, :tax_rate, :float
    add_column :provinces, :pst, :decimal
    add_column :provinces, :gst, :decimal
    add_column :provinces, :hst, :decimal
  end
end
