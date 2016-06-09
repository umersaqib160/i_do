class Supplier::ServicesController < ApplicationController
  def index
<<<<<<< HEAD

=======
    @services = Service.all
>>>>>>> 8d7b0095193d5fa1f482ef362cc9bbedcbb744fd
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
