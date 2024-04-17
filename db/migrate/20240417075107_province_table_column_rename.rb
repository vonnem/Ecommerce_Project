class ProvinceTableColumnRename < ActiveRecord::Migration[7.1]
  def change
    rename_column :provinces, :region_name, :province_name
  end
end
