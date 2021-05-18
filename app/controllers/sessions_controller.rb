class SessionsController < ApplicationController

    before_action :current_user

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to "/"
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if current_user
            session.delete :name
        end
    end
   
    
end