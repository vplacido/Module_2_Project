class ServicesController < ApplicationController


    before_action :authorized, only: [:new, :create, :edit, :update]

    
    def index
        @services = Service.all 
    end 

    def show
        @service = Service.find(params[:id])
        
        # self.reviews
        # byebug
    end

    def new
        @service = Service.new
        # byebug
    end

    def create
        @service = Service.create(seller_id: session[:user_id], title: service_params[:title], description: service_params[:description], time_frame: service_params[:time_frame], price: service_params[:price])
        ServiceCategory.create(service_id: @service.id, category_id: params[:service][:category_ids].to_i)
        redirect_to service_path(@service)
    end

    def edit
        @service = Service.find(params[:id])
    end

    def update
        # byebug
        @service = Service.find(params[:id])
        @service.update(service_params)
        redirect_to service_path(@service)
    end

    def destroy
        @service = Service.find(params[:id])
        @service.destroy
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :time_frame, :price, :seller_id)

    end 
end

