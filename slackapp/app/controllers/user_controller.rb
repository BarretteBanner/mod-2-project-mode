class UserController < ApplicationController

    def index
        @users = User.all
    end
    
    def new
    end
  
    def edit
        @user = User.find(params[:id])
    end

    def create
        User.create({
          name: params[:name],
          age: params[:age],
          password: params[:password]
        })
        redirect_to("/user")
      end

      def update
        @user = User.find(params[:id])
        @user.update({
          full_name: params[:fullname],
          display_name: params[:displayname],
          bio: params[:bio],
          age: params[:age],
        })
        redirect_to '/user/'
      end
end