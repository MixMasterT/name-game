class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.primary_key :id
      t.references :user, foreign_key: true
      t.string :link

      t.timestamps
    end
    add_index :photos, :id
  end
end
