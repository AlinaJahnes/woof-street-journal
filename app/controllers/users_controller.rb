class UsersController < ApplicationController
  def new
    @user = User.new
    render layout: false
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find_by_id(current_user.id)
  end

  def update
    user = User.find_by_id(current_user.id)
    user.update_attributes(user_params)  
    if user.save
      flash[:notice] = "Your profile has been updated!"
      redirect_to user
    else
      flash[:errors] = user.errors.full_messages
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password,:avatar, :name)
  end
end
