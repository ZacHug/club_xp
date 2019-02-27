class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.references :user, foreign_key: true
      t.references :club, foreign_key: true
      t.string :video

      t.timestamps
    end
  end
end
