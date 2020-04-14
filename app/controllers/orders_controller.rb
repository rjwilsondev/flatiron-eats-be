class OrdersController < ApplicationController

    def create
        cart = params["cart"]
        user_id = params["user_id"].to_i
        restaurant_id = cart[0]["restaurant_id"]
        order = Order.create("user_id"=>user_id,"restaurant_id"=>restaurant_id)
        
        cart.map do |item|
            puts item
            OrderItem.create("item_id"=>item["id"] , "order"=>order)
        end
    end

    def index
        orders = Order.all
        render json: orders.to_json(
            :include => {:items => {:except => [:created_at, :updated_at]}
        })
    end

    def show
        order  = Order.find(params[:id])
        render json: order.to_json(
            :include => {:items => {:except => [:created_at, :updated_at]},

        })
    end

end
