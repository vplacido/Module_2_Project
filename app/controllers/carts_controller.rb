class CartsController < ApplicationController
    def show
        @cart = Cart.find(params[:id])
    end

    def new
        @cart = Cart.new
    end

    def create
        @cart = Cart.create(user_id: session[:user_id], service_id: params[:cart][:service_id])#params[:cart][:service_id])#cart_params[:service_id])
        redirect_to profile_path(User.find(session[:user_id]))
    end
end
