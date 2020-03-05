class ReviewsController < ApplicationController

    before_action :authorized, only: [:new, :create, :edit, :update]

    def index
        @reviews = Review.all
    end 

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        
    end

    def create
        # byebug
        @review = Review.create(service_id: params[:review][:service], description: params[:review][:description], rating: params[:review][:rating])
        redirect_to reviews_path
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end

    private 

    def review_params
        params.require(:review).permit(:service_id, :description, :rating)
    end
end
