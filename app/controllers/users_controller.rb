class UsersController < ApplicationController

    def index
        @users = User.all
        # byebug
    end 

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(params)
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(params)
        redirect_to user_path(@user)
    end

    def destroy
        
        redirect_to users_path
    end
end
