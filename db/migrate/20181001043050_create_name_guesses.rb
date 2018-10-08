class CreateNameGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :name_guesses do |t|
      t.references :user, foreign_key: true
      t.references :quiz, foreign_key: true
      t.integer :target_user_id
      t.string :guess
      t.boolean :was_successful
      t.timestamps
    end
    add_foreign_key :name_guesses, :users, column: :target_user_id
  end
end
