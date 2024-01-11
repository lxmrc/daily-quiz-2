class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.string :difficulty
      t.string :category
      t.string :question
      t.string :correct_answer
      t.string :incorrect_answer_1
      t.string :incorrect_answer_2
      t.string :incorrect_answer_3

      t.timestamps
    end
  end
end
