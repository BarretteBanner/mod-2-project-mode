class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def current_user
        return User.find(session[:current_user_id])
    end

    def authenticate
        user = User.find_by({ display_name: params[:display_name] })
    
        if user && user.authenticate(params[:password])
            session[:current_user_id] = user.id 
            redirect_to "/channel/"
        else
            redirect_to "/login"
        end
    end
    
end
