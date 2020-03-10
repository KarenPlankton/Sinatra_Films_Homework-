require('sinatra')
require('sinatra/contrib/all')
require('/Users/nana/Desktop/Codeclan_homework/week_3/Cinema_tables homework/models/films.rb')
also_reload('./models/*')

get '/films' do
  @films =Film.all
  erb(:index)
end

get '/film/:id' do
  @film =Film.find_film_per_id(params[:id].to_i)
  erb(:film_details)
end
