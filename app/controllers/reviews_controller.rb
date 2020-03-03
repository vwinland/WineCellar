class ReviewsController < ApplicationController

    def new 
        @review = Review.new
    end

    def create 
        @review = Review.new(review_params)
        @review.user_id = current_user.id 
        @review.wine_id = @wine.id

        if @review.save
            redirect_to @wine
        else
            render 'new'
        end
    end


end
