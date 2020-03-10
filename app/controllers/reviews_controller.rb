class ReviewsController < ApplicationController
    
    def index
        get_wine
    end

    def new 
        get_wine
        redirect_to wines_path if !@wine
        @review = Review.new
    end

    def create 
       @wine = Wine.find_by(id: params[:review][:wine_id])
       @review = Review.new(review_params)
        if @review.save 
            redirect_to wine_reviews_path(@review.wine)
        else
            render :new
        end
    end
 
    private 

    def get_wine
        @wine ||= Wine.find_by(id: params[:wine_id])
    end

    def review_params
        params.require(:review).permit(:review, :wine_id)
    end
end
