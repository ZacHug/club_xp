class AddQrCodeToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :qr, :string
  end
end
