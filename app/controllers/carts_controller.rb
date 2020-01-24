class CartsController < ApplicationController
    def new
        @cart = Cart.new
    end
    
    def create
        @cart = Cart.new(review_params)
        @cart.user_id = cookies[:user_id]

        @cart.save

        redirect_to @cart
    end 


    private

    def review_params
        params.require(:cart).permit(:name, :user_id, :book_id)
    end
end


