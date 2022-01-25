class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    'Welcome'
  end

  get '/foods' do
    foods = Food.all
    foods.to_json
  end      

  get '/foods/sort_:sort' do
    foods = Food.all.order(calories: params[:sort])
    foods.to_json
  end

  get '/foods/:category' do
    foods = Food.select {|x| x.category == "#{params[:category]}"}
    foods.to_json
  end

end
