class AddReferencesFromClubsToClubGenres < ActiveRecord::Migration[5.2]
  def change
    add_reference :club_genres, :club , foreign_key: true
  end
end
