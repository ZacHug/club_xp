class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.string :music_genre
      t.string :special_guest
      t.text :description

      t.timestamps
    end
  end
end
