class WinesController < ApplicationController
      
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

    private 

    def wine_params
        params.require(:wine).permit(:name, :grape_variety, :country_of_origin, :year)
    end 
end

