class Order < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    has_many :order_items
    has_many :items, through: :order_items

    def restaurant_name
        return self.restaurant.name
    end

    def total_cost
        total = 0
        self.items.each do |item| 
            total += item.price
        end
        return total
    end


end
