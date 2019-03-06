class AddStreamToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :stream, :string
  end
end
