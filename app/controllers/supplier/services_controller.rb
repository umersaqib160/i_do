class Supplier::ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
