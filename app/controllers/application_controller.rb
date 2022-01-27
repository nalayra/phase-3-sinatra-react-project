require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    'Welcome'
  end
# hellooooo
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

  get '/eats' do
    eats = Meal.all
    eats.to_json(include: :foods)
      # { only: [:name, :calories])
    # cals = Eat.first.cal_total
    # names = Eat.first.list_names
    # cals.to_json
    # names.to_json
    # names.to_json
    # (only: [:id, :title, :genre, :price], include: {
    #   reviews: { only: [:comment, :score], include: {
    #     user: { only: [:name] }
      
  end



end