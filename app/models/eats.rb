class Eat < ActiveRecord::Base
belongs_to :food
belongs_to :meal

    def cal_total
        sum = 0
        self.meal.foods.all.map do |r|
            sum += r.calories
        end
        sum
    end

    def list_names
        list = []
        self.meal.foods.all.map do |r|
            list << r.name
    end
    list
end

    def list_date
        self.created_at.to_date
    end
end