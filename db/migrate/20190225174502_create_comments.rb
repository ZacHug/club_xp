class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.users :references
      t.clubs :references

      t.timestamps
    end
  end
end
