class DataController < ApplicationController

  def index
  end

  def geocoded_points
    @geocoded_points = Location.geocoded_points
    render :json => @geocoded_points
  end

end