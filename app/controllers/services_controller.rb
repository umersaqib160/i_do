class ServicesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @users = User.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude

    end
  end

  def show
    @service = Service.find(params[:id])

  end

  def new
    @service = Service.new
  end
  def edit
    @service.find(params[:id])

  end

  def update
    @service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.save!
    redirect_to service_path(@service)
  end
def destroy
  @service = Service.find(params[:id])
  @service.destroy

  redirect_to service_path

end

private

def service_params
  params.require(:service).permit(:name, :supplier_id)
end



end
