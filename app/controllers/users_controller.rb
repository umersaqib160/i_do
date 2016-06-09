class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = User.search(params[:search])
    @alert_message = "You are viewing #{@user.first_name}"

  def index
    User.all
  end

  def show
    User.find(params[:id])
  end

  def new
  end

  def create

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, )
  end
end
