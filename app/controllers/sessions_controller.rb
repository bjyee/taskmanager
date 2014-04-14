class SessionsController < ApplicationController
  def new
  end

  def create
    users = Users.authenticate(params[:login], params[:password])
    if users
      session[:users_id] = users.id
      redirect_to_target_or_default root_url, :notice => "Logged in successfully."
    else
      flash.now[:alert] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:users_id] = nil
    redirect_to root_url, :notice => "You have been logged out."
  end
end
