class UsersController < ApplicationController
# GET /register - new user action
    def new
      @user = User.new
      render :new
    end
# Post /users - create the user action
    def create
        @user = User.new(user_params)
    end

    private 

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
