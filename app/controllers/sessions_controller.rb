class SessionsController < ApplicationController

    def new 
    end

    def create
        @user = User.find_by(name: params[:name])
        if !@user 
            @error = 'Account not found.'
            render :new 
        elsif !@user.authenticate(params[:password])
            @error = "Username or password incorrect. Please try again."
            render :new
        else
            session[:user_id] = @user_id
            redirect_to wines_path
        end
    end

    def destroy

    end
end
