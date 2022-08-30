class UserController < ApplicationController
    def show
        user = User.find_by(id: session[:user_id])
        if (user) 
            render json: user
        end
    end
    
end
