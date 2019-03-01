class RenameAdmitAmount < ActiveRecord::Migration[5.2]
  def change
    rename_column :admissions, :admit_amout, :admit_amount
  end
end
