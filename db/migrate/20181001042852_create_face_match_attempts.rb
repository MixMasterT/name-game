class CreateFaceMatchAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :face_match_attempts do |t|
      t.primary_key :id
      t.integer :delay
      t.references :user, foreign_key: true
      t.references :target_user, foreign_key: true
      t.references :photo, foreign_key: true
      t.references :quiz, foreign_key: true
      t.boolean :was_successful

      t.timestamps
    end
    add_index :face_match_attempts, :id
  end
end
