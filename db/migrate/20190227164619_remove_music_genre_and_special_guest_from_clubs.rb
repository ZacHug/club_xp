class RemoveMusicGenreAndSpecialGuestFromClubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :clubs , :special_guest, :string
    remove_column :clubs , :music_genre, :string
  end
end
