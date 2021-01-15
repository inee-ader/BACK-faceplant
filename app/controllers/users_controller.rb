class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: {
                status: :updated, 
                user: user
            }
        else
            render json: user.errors
        end   
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json: {
            status: :destroyed,
            user:user
        }
    end

    private
    # should this be in registrationsn controller? 
    def user_params
        params.require(:user).permit(:name, :username, :headline)
    end

end
