class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.date :date_of
      t.integer :admit_amout
      t.references :user, foreign_key: true
      t.references :club, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
