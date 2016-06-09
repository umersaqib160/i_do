class PagesController < ApplicationController
skip_before_action :authenticate_user!


  def home
    @service = Service.all
  end
end
