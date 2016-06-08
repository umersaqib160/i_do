class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = User.search(params[:search])
    @alert_message = "You are viewing #{@user.first_name, @user.last_name}"
  end

  def new
  end

  def create

  end
end
