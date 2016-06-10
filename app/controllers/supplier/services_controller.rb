class Supplier::ServicesController < ApplicationController
  def index
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
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def destroy
    @service = Service.find(params[:id])
  end

  private

  def params
  end
end
