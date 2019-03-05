class RemoveAdmitAmountFromAdmissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :admissions, :admit_amount, :integer
  end
end
