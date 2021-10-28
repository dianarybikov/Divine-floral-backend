class FlowersController < ApplicationController
    def index
        @flowers = Flower.all 
        
        render json: @flowers
    end

    def show
        @flower = Flower.find (params [:id])

        render json: @flower
    end

    def updated
        @flower = Flower.find(params[:id])
        @flower.update(like: params[:likes])
        render json: @flower
    end
end

