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
     
        user = User.create({
          full_name: params[:full_name],
          display_name: params[:display_name],
          bio: params[:bio],
          age: params[:age],
          password: params[:password]
        })
        session[:current_user_id] = user.id 
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

      def show
        @user = User.find(params[:id])

        redirect_to '/user/'
      end
end