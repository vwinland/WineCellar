class UsersController < ApplicationController
# GET /register - new user action
    def new
      @user = User.new
      render :new
    end
# Post /users - create the user action
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to wines_path
        else
            render :new 
        end
    end


    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
