class Food < ActiveRecord::Base
    has_many :eats
    has_many :meals, through: :eats
end