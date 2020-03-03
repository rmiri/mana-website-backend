class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def login 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {user: user }
        else
            render json: { message: "Invalid email/password"}
        end
    end


end
