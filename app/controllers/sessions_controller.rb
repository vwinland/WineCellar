class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    def create 
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            sessions[:user_id] = @user_id
            redirect_to wines_path
        else
            @error = "Username or Password is incorrect"
            render :new
        end
    end

    def destroy

    end
end
