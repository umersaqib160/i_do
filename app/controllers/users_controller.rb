class UsersController < ApplicationController
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
