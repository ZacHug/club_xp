class AddPriceToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_monetize :admissions, :price, currency: { present: false }
  end
end
