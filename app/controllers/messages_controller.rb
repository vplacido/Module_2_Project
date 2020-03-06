class MessagesController < ApplicationController
    def index
        @messages = Message.all
    end 


    def new
        @message = Message.new
    end 

    def create
        
        @message = Message.create(user_id: session[:user_id], listing_id: params[:message][:listing_id], title: params[:message][:title], description: params[:message][:description])
        # byebug
        redirect_to profile_path(User.find(session[:user_id]))
        # byebug
    end 

    def show
        @message = Message.find(params[:id])
    end 

    private

    # def message_params
    #     params.require(:message).permit(:listing_id, :seller_id, :texts)
    # end 
end
