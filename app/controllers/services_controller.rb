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
        @service = Service.create(params)
        redirect_to service_path(@service)
    end

    def edit
        @service = Service.find(params[:id])
    end

    def update
        @service = Service.find(params[:id])
        @service.update(params)
        redirect_to service_path(@service)
    end

    def destroy
        
        redirect_to services_path
    end
end

