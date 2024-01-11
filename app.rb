require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: "sqlite3", database: "db/quiz.db" }

class Question < ActiveRecord::Base
  def answers
    [correct_answer, incorrect_answer_1, incorrect_answer_2, incorrect_answer_3].compact.shuffle
  end
end

before do
  get_questions # if Question.where(date: Date.today).empty?
end

get '/' do
  erb :index
end
 
post '/submit' do
  guesses = params.values
  answers = @questions.pluck(:question, :correct_answer)

  @results = check_answers(guesses, answers)

  erb :results
end

def get_questions
  @questions = Question.all.order(:id)
end

def check_answers(guesses, answers)
  result = { total: answers.size, score: 0, results: [] }

  answers.each_with_index do |(question, answer), index|
    guess = guesses[index]
    correct = answer == guess
    result[:score] += 1 if correct

    result[:results] << {
      question: question,
      guess: guess,
      answer: answer,
      correct: correct
    }
  end

  result
end
