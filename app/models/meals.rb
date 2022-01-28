class Meal < ActiveRecord::Base
    has_many :eats
    has_many :foods, through: :eats

    def list_date
        self.created_at.to_date
    end

end