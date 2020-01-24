class AuthController < ApplicationController
    def login 

    end

    def authenticate
        @user = User.find_by(username: params[:auth][:username])
        if @user
            cookies[:user_id] = @user.id
            redirect_to books_path
        else
            flash[:message] = "Invalid Input"
            render :login
        end
    end
end


