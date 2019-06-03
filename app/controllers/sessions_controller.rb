class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      user.save
      session[:user_id] = user.id
    else
      flash.alert = "invalid password"
    end
    redirect_to :root
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root
  end

end
