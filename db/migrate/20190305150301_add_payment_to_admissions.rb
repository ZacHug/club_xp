class AddPaymentToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :payment, :jsonb
  end
end
