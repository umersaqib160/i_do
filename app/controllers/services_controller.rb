class ServicesController < ApplicationController

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude

    end
    def index
      @services = Service.all

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

    def search
      @searched_term = params[:service_name]
      @service_providers = Service.where(name: @searched_term)
    end

    private

    def service_params
      params.require(:service).permit(:name, :supplier_id)
    end

    def self.search(search)
      if search
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end




  end
