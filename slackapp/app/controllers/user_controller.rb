class UserController < ApplicationController
    
    def new
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