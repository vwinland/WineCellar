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
        #@review.wine_id = @wine.id

        if @review.save
            redirect_to wines_path(@wines)
        else
            render 'new'
        end
    end

    private 

    def review_params
        params.require(:review).permit(:rating, :review)
    end
end
