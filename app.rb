require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: "sqlite3", database: "db/quiz.db" }

class Question < ActiveRecord::Base
  def answers
    [correct_answer, incorrect_answer_1, incorrect_answer_2, incorrect_answer_3].compact.shuffle
  end
end

get '/' do
  @questions = Question.all.order(:id)
  erb :index
end
