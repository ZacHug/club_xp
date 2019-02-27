class AddPriceToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :price, :integer
  end
end
