class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/breeds' do
    @breeds = Breed.all
    erb :breeds
  end

  get '/jockeys/:id' do

    @jockey = Jockey.find(params[:id])
    erb :"jockeys/index"
  end
end
