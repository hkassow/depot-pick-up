class SessionsController < ApplicationController
    def create
        user = User.find_or_create_by(email: params[:email])
        session[:user_id] = user.id
        render json: user, status: :created
    end
    def destroy
        session.delete :user_id
        head :no_content
    end
end

