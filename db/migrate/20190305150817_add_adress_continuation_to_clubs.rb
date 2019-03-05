class AddAdressContinuationToClubs < ActiveRecord::Migration[5.2]
  add_column :clubs, :postalcode , :string
  def change
  end
end
