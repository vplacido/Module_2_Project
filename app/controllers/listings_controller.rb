class ListingsController < ApplicationController

    def index
        @listings = Listing.all
        # byebug
    end 

    def show
        @listing = Listing.find(params[:id])
    end

    def new
        @listing = Listing.new
    end

    def create
        # byebug
        @listing = Listing.create(user_id: session[:user_id], title: listing_params[:title], description: listing_params[:description], time_frame: listing_params[:time_frame], price: listing_params[:price])
        redirect_to listings_path
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
        # byebug
        @listing = Listing.find(params[:id])
        @listing.update(listing_params)
        redirect_to listing_path(@listing)
    end

    def destroy
        @listing = Listing.find(params[:id])
        @listing.destroy
        redirect_to listings_path
    end

    private 

    def listing_params
        params.require(:listing).permit(:title, :description, :time_frame, :price, :packages)
    end
end
