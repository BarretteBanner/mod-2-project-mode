class ChannelController < ApplicationController
    
  def index
    @channels = Channel.all 
    @users = User.all
  end  
  
  def new 
     
    end

    def create
        channel = Channel.create({
          name: params[:name],
          description: params[:description]
        })
        redirect_to("/channel/#{channel.id}")
      end

      def show
        @channel = Channel.find(params[:id])
        @users = User.all
      end
end