class PagesController < ApplicationController
  #  Skipping login for some pages
  skip_before_action :authenticate_user!, only: :home

  def home
    @markers = [{
      lat: 25.21637624420233,
      lng: 55.275519286827105
    }]
  end
end
