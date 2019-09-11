class PostController < ApplicationController
    
    def new
    end

    def create
        @post = Post.create({
          channel_id: params[:channel_id],
          user_id: params[:user_id],
          content: params[:content]
        })
        redirect_to("/channel/#{params[:channel_id]}")
      end

      def show
        @post = Post.find(params[id])
      end
      
end