class UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def show
        user = User.find_by(username: params[:username])
        render json: UserSerializer.new(user).to_serialized_json
    end

    def create
        user = User.create(username: params[:username])
        render json: UserSerializer.new(user).to_serialized_json
    end
end
