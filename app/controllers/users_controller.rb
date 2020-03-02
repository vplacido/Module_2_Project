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
        # byebug
        @user = User.create(login_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    private

    def login_params
        params.require(:user).permit(:username, :password, :password_confirmation)

    end 

    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :profession, :email)
    end
end
