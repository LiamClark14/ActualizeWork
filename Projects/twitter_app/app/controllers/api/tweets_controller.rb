class Api::TweetsController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user = User.new(
      username: params["username"],
      email: params["email"],
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
