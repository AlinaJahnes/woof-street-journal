class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root, notice: "You have successfully logged out."
  end
end