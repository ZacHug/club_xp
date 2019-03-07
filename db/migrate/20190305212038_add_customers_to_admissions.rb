class AddCustomersToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :customers, :integer
  end
end
