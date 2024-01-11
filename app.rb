require 'sinatra'
require 'sinatra/activerecord'

set :database, { adapter: "sqlite3", database: "db/quiz.db" }

class Question < ActiveRecord::Base
end

get '/' do
  Question.all.map(&:question).join("\n")
end
