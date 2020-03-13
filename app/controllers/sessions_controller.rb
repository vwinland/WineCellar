class SessionsController < ApplicationController

    def new 
    end

    def create
        if request.env['omniauth.auth']
            @user = User.find_or_create_by(github_uid: request.env['omniauth.auth'])
            log_in(@user)
            redirect_to wines_path
        else
        @user = User.find_by(name: params[:name])
            if !@user 
                @error = 'Account not found.'
                render :new 
            elsif !@user.authenticate(params[:password])
                @error = "Username or password incorrect. Please try again."
                render :new
            else
                log_in(@user)
                redirect_to wines_path
            end
        end
    end

    def destroy
        session.clear
        redirect_to wines_path
    end
end
