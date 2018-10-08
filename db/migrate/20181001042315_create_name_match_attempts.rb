class CreateNameMatchAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :name_match_attempts do |t|
      t.boolean :was_successful
      t.integer :delay
      t.integer :target_user_id
      t.references :quiz, foreign_key: true
      t.references :user, foreign_key: true
      t.references :photo, foreign_key:true

      t.timestamps
    end
    add_foreign_key :name_match_attempts, :users, column: :target_user_id
  end
end
