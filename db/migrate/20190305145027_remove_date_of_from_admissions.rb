class RemoveDateOfFromAdmissions < ActiveRecord::Migration[5.2]
  def change
    remove_column :admissions, :date_of, :date
  end
end
