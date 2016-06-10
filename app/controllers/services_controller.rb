class ServicesController < ApplicationController

    # Let's DYNAMICALLY build the markers for the view.


skip_before_action :authenticate_user!

    def index
      if params[:search_term]

        @searched_term = params[:search_term]
        @services = Service.where(name: @searched_term)

      else
        @services = Service.all
      end
      @service_users = []

      @services.each do |service|
        @service_users << service.user
      end

      @markers = Gmaps4rails.build_markers(@service_users) do |user, marker|
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
