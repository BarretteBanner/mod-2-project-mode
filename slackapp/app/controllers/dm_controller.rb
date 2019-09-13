class DmController < ApplicationController
    
    def index
        @user = current_user
        @all_dm = Dm.all 
    end

    def new
        @users = User.all
        @user = current_user
    end

    def create
        
        user1name = User.find(params[:user1])
        user2name = User.find(params[:user2])
        array = []
        array << params[:user1]
        array << params[:user2]
        sorted = array.sort
        @name = "#{sorted[0]}/#{sorted[1]}"
        puts "This is the name #{@name}"
        dm = Dm.create({
            name: @name,
            user1: params[:user1],
            user2: params[:user2],
            user1name: user1name.display_name,
            user2name: user2name.display_name
        })
        redirect_to("/dm/#{dm.name}")

    end

    def show
       
        @user = current_user
        @dm = Dm.find_by(name:"#{params[:id1]}/#{params[:id2]}")

        Message.all.select(dm_id:@dm.id)
        
       
        
    end

end