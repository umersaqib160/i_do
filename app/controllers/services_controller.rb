class ServicesController < ApplicationController

  skip_before_action :authenticate_user!
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end


end

<div class="share-links">
  <%= link_to "https://www.facebook.com/umersaqib160", class: "share-link bg-facebook" do  %>
    <i class="fa fa-facebook"></i>
  <% end %>
  <%= link_to "", class: "share-link bg-twitter" %>
    <i class="fa fa-twitter"></i>
  </a>
  <%= link_to "", class:"share-link bg-email" %>
    <i class="fa fa-envelope-o"></i>
  </a>
  <%= link_to "", class:"share-link bg-text" %>
    <i class="fa fa-mobile"></i>
</div>
