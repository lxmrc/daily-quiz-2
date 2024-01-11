require 'sinatra'

set :database, { adapter: "sqlite3", database: "db/quiz.db" }

get '/' do
  'hi'
end
