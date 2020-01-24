class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update]
    
    def show
        # find_review
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        if @review.save 
            # redirects to show page
            redirect_to review_path(@review.id)
        else 
            # reloads form (form is in new.html.erb)
            render :new
        end
    end

    def edit
        # find_review    
    end

    def update
        # find_review
        @review.update(text: params[:review][:text])
        redirect_to review_path(@review.id)
    end

    
    private

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:text, :user_id, :book_id)
    end
end

