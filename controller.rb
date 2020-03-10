require('sinatra')
require('sinatra/contrib/all')

require_relative('models/film')
also_reload('./models/*')

get '/film' do
  @film1 = Film.all
  erb(:home)
end

get '/film/:movies' do
  film_id = param[:movies].to_i
end
