class UserController < ApplicationController

    def /
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
end