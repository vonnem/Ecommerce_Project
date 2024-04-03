class CreateRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :regions do |t|
      t.string :regionName
      t.float :taxRate
      t.timestamps
    end
  end
end
