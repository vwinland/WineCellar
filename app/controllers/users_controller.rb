class UsersController < ApplicationController
# GET /register - new user action
    def new
      @user = User.new
      render :new
    end
# Post /users - create the user action
    def create
        raise "Hello".inspect
    end

    private 

    def user_registration_params
        params.require(:user).permit(:name, :password)
    end
end
