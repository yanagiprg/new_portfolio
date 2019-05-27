class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to users_path
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to :users
  end

  private
  def user_params
    params.require(:user).permit(:username, :userimage)
  end

end
