class HomeController < ApplicationController
  def index
  end

  def geocoded_clicks
    @geocoded_clicks = Location.geocoded_clicks
    render :json => @geocoded_clicks
  end
end
