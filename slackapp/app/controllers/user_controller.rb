class UserController < ApplicationController
    def /
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end
end