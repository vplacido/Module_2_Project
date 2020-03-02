class ServicesController < ApplicationController
    def index
        @services = Service.all 
    end 

    def show
        @service = Service.find(params[:id])
    end

    def new
        @service = Service.new
    end

    def create
        @service = Service.create(service_params)
        redirect_to service_path(@service)
    end

    def edit
        @service = Service.find(params[:id])
    end

    def update
        @service = Service.find(params[:id])
        @service.update(service_params)
        redirect_to service_path(@service)
    end

    def destroy
        
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:title, :description, :time_frame, :price, :seller_id)

    end 
end

