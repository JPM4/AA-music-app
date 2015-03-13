class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login_user!(@user)
      redirect_to user_url(@user)
    else
      flash[:errors] = "Invalid username/password!"
      render :new
    end
  end

  def show
    @user = current_user
    if !@user.nil? && @user == User.find_by_id(params[:id])
      render :show
    else
      flash[:errors] = "You must be logged in to view your user page!"
      redirect_to new_session_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
