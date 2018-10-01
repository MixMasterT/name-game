class CreateNameGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :name_guesses do |t|
      t.primary_key :id
      t.references :user, foreign_key: true
      t.references :target_user, foreign_key: true
      t.references :quiz, foreign_key: true
      t.string :guess
      t.boolean :was_successful

      t.timestamps
    end
    add_index :name_guesses, :id
  end
end
