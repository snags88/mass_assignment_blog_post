class AppController < Sinatra::Base
  set :views, Proc.new { File.join(root, '../views')}
end