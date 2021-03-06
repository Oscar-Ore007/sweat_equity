ENV['SINATRA_ENV'] ||= "development"



require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)


require_relative '../secrets'
# configure :development do 
#   set :database, "sqlite:db/#{ENV['SINATRA_ENV']}.db"
# end 

require './app/controllers/application_controller'
require_all 'app'
