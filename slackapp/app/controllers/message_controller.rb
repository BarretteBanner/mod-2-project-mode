class MessageController < ApplicationController

    def create
        Message.create({
            content: params[:content],
            dm_id: params[:dm_id],
            user_id: params[:user_id]
        })
        dm = Dm.find(params[:dm_id])
        redirect_to("/dm/#{dm.name}")
    end

end