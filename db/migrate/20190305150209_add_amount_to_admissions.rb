class AddAmountToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_monetize :admissions, :amount, currency: { present: false }
  end
end
