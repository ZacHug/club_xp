class RemoveStateFromAdmissions < ActiveRecord::Migration[5.2]
  def change
    change_column :admissions, :state, :string, :default => "pending"
  end
end
