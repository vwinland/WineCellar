class WinesController < ApplicationController
      
    def index 
        @wines = Wine.all 
    end

    def new 
        @wine = Wine.find(params[:id])
        @review = Review.new
        @wine = Wine.new
    end 

    def create

    end



end
