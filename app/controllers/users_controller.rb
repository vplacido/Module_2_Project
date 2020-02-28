class UsersController < ApplicationController

    def index
        @User = User.all
    end 

    def show
        @user = User.find(params[:id])
    end 
end
