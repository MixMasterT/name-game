class CreateFaceMatchAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :face_match_attempts do |t|
      t.integer :delay
      t.integer :target_user_id
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.references :quiz, foreign_key: true
      t.boolean :was_successful

      t.timestamps
    end
    add_foreign_key :face_match_attempts, :users, column: :target_user_id
  end
end
