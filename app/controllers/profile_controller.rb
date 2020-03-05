class ProfileController < ApplicationController
    def show
        @user = User.find(session[:user_id])
        @listings = Listing.all
        @services = Service.all
        @carts = Cart.all
        # byebug
    end
end
