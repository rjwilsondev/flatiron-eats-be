class Order < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
    has_many :order_items
    hast_many :items, through: :order_items
end
