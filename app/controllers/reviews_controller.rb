class ReviewsController < ApplicationController
    before_action :require_login
    before_action :get_wine, only: [ :index, :new]
    def index
        #get_wine
        wine_exists
        current_user
    end

    def new 
        #get_wine
        wine_exists
        @review = Review.new
    end

    def create 
       @wine = Wine.find_by(id: params[:review][:wine_id])
       @review = current_user.reviews.build(review_params)
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

    def wine_exists
        redirect_to wines_path if !@wine
    end

    def review_params
        params.require(:review).permit(:review, :wine_id, :rating)
    end
end
