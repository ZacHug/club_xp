class RemovePriceFromTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :tables, :price
  end
end
