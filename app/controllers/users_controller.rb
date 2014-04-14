class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]

  def new
    @users = Users.new
  end

  def create
    @users = Users.new(params[:users])
    if @users.save
      session[:users_id] = @users.id
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end
  end

  def edit
    @users = current_users
  end

  def update
    @users = current_users
    if @users.update_attributes(params[:users])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
end
