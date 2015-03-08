class PresidentController < AppController
  get '/' do
    @presidents = President.all
    erb :"presidents/index.html"
  end

  get '/presidents/new' do
    erb :"presidents/new.html"
  end

  post '/presidents' do
    @president = President.create(params[:president])
    redirect '/'
  end

end