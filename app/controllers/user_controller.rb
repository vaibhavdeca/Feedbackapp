class UserController < ApplicationController
    def index
        @users = User.all 
    end

    def new
    end

    def create
        user = User.new(user_params)
        if User.exists?(id: user.id)
            redirect_to "users/:id"
        elsif user.save
            redirect_to "/users"
        else 
            redirect_to "/users/new"
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to "/users"
    end

    private
    def user_params
        params.require(:user).permit(:username,:email,:phone,:fq1,:fq2,:fq3)
    end
end
