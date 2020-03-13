class WinesController < ApplicationController
    before_action :logged_in?
    def index 
        @wines = Wine.all
    end

    def new 
        # @wine = Wine.find(params[:id])
        # @review = Review.new
        @wine = Wine.new
    end 

    def create
        @wine = Wine.new(wine_params)
        
        if @wine.save
            redirect_to wines_path(@wine)
        else
            render :new
        end
    end

    def red 
        @wines = Wine.red 
        render :index
    end

    def white 
        @wines = Wine.white
        render :index
    end

    def sparkling 
        @wines = Wine.sparkling
        render :index
    end


    private 
    

    def wine_params
        params.require(:wine).permit(:name, :grape_variety, :country_of_origin, :year)
    end 
end

