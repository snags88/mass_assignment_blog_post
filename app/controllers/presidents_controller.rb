class PresidentController < AppController
  get '/' do
    @presidents = President.all
    erb :"presidents/index.html"
  end

  get '/presidents/new' do
    erb :"presidents/new.html"
  end

  post '/presidents' do
    @president = President.create(:name => params[:name])
    @president.party = params[:party]
    @president.save
    redirect '/'
  end

end