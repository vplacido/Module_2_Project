class SettingsController < ApplicationController
    def index
        @user = User.find(session[:user_id])
        @listings = Listing.all
        @services = Service.all
    end
end
