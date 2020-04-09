class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants.to_json(
            :include => {:items => {:except => [:created_at, :updated_at]}
        })
    end

    def show
        resturant = Restaurant.find(params[:id])
        render json: resturant.to_json(
            :include => {:items => {:except => [:created_at, :updated_at]}
        })
    end

end
