require "pry"

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

  get '/foods/by_category/:category' do
    foods = Food.select{|x| x.category == params[:category]}
    # foods = Food.where(category: params[:category])
    foods.to_json
  end

  get '/foods/by_name/:name' do
    foods = Food.select {|x| x.name == params[:name]}
    # foods = Food.all.find_by(name: params[:name])
    foods.to_json
  end

  get '/foods/by_calories/:calories' do
    foods = Food.all.select{|x| x.calories == params[:calories].to_i}
    foods.to_json
  end

end