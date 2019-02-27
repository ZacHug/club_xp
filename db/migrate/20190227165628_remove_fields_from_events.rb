class RemoveFieldsFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :special_guest, :string
    remove_column :events, :music_genre, :string
  end
end
