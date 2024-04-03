class RenameColumnsForRegions < ActiveRecord::Migration[7.1]
  def change
    rename_column :regions, :regionName, :region_name
    rename_column :regions, :taxRate, :tax_rate
  end
end
