class ReviewsController < ApplicationController
    
    def index
        @review = Review.all
    end

    def new 
        @review = Review.new
    end

    def create 
        @review = Review.new(review_params)
       # @review.user_id = current_user.id 
        

        if @review.save
            redirect_to wine_reviews_path(@wine)
        else
            render :new
        end
    end

    private 

    def review_params
        params.require(:review).permit(:review)
    end
end
