class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def login 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {user: user, token: generate_token({id: user.id }) }
        else
            render json: { message: "Invalid email/password"}
        end
    end

    def validate
        if get_user
            # If so, send back that user's username and a newly generated token
            render json: { email: get_user.email, token: generate_token(id: get_user.id)}
          else
            # Otherwise, send back an error
            render json: { error: "You are not authorized" }
          end
    end


end
 