class Meal < ActiveRecord::Base
    has_many :eats
    has_many :foods, through: :eats

end