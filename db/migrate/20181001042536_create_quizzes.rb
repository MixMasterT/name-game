class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.primary_key :id
      t.string :type
      t.integer :elapsed_time
      t.references :user, foreign_key: true
      t.float :score

      t.timestamps
    end
    add_index :quizzes, :id
  end
end
