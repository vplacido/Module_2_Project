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
        @listing = Listing.create(listing_params)
        redirect_to listings_path
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
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
        params.require(:listing).permit(:user_id, :title, :description, :time_frame, :price, :packages,)
    end
end
