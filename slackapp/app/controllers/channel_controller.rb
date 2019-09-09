class ChannelController < ApplicationController
    
    def new
        
    end

    def create
        Channel.create({
          name: params[:name],
          description: params[:description]
        })
        redirect_to("/channel/:id")
      end

      def show
        @channel = Channel.find_by(id: params[:id])
      end
end