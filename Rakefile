require "sinatra/activerecord"
require "sinatra/activerecord/rake"
require "irb"

namespace :db do
  task :load_config do
    require "./app"
  end
end

desc "Run IRB console"
task :console do
  exec "irb -r ./app.rb"
end
