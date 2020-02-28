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
        @listing = Listing.create(params)
        redirect_to listing_path(@listing)
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
        @listing = Listing.find(params[:id])
        @listing.update(params)
        redirect_to listing_path(@listing)
    end

    def destroy
        
        redirect_to listings_path
    end
end
