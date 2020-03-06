class ProfileController < ApplicationController
    def index
        @user = User.find(session[:user_id])
        @listings = Listing.all
        @services = Service.all
        @carts = Cart.all
        @messages = Message.all
    end
end
