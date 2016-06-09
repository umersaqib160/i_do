class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = User.search(params[:search])
    @alert_message = "You are viewing #{@user.first_name}"
  end

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


  def search
    @searched_term = params[:service_name]
    @service_providers = Service.where(name: @searched_term)
  end


  private

  def user_params
    params.require(:user).permit(:address)
  end

end
