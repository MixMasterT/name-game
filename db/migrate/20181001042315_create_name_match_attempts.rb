class CreateNameMatchAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :name_match_attempts do |t|
      t.primary_key :id
      t.boolean :was_successful
      t.int :delay
      t.references :quiz, foreign_key: true
      t.references :user, foreign_key: true
      t.references :target_user, foreign_key: true
      t.references :photo, foreign_key:true

      t.timestamps
    end
    add_index :name_match_attempts, :id
  end
end
