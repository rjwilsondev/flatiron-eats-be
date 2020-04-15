class UsersController < ApplicationController

    def index
        users  = User.all
        render json: users.to_json(
            :include => {:orders => {:except => [:created_at, :updated_at]}
        })
    end

    def show
        user = User.find(params[:id])

        order_items = user.orders.map do |order| 
            {restaurant: order.restaurant.name, items: order.items}
        end

        render json: user.to_json(
            serailized_data
        )
    end
    
    private
    def serailized_data
        {
            :include => {:orders => 
                {:except => [:created_at, :updated_at ], :methods  => [:restaurant_name, :total_cost], :include => {:items => {:except => [:created_at, :updated_at]}}}
            },
            :except => [:created_at, :updated_at ]
        }
    end

end



