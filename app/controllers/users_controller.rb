class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to :controller => 'books', :action => 'index'
        else 
            puts "Invalid"
            render :new
            flash[:message] = "Invalid"
        end
    end

    
    private
    def user_params
        params.require(:user).permit(:username)
    end
end

