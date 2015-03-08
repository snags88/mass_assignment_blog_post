ENV['SINATRA_ENV'] ||= "test"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
require_all 'app'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/mass_assignment.db"
)

