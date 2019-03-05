class AddStateToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :state, :string
  end
end
