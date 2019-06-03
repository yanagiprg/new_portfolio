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
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    end
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

  def login_form
  end

  def login
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      user.save
      session[:user_id] = user.id
    else
      flash.alert = "invalid password"
    end
    redirect_to :root
  end

  def logout
    session.delete(:user_id)
    redirect_to :root
  end


  private
  def user_params
    params.require(:user).permit(:username, :password, :userimage, :userimage_cache)
  end

end
