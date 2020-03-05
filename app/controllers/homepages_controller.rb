class HomepagesController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
            @listings = Listing.all
            @services = Service.all
        else
            @user = nil
            @listings = Listing.all
            @services = Service.all
        end        
    end
    # change the user index to be the user settings to be able to chnage info 
    # create a about us/contact us page 
    # create a drop down categories for listings
    # create the categories controller to create a new category
    # show the category in the show of the listing
    # the listing edit show allow to change the category of the listing
    # the homepage should show the categories of the listings and the services
end