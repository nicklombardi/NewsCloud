class SearchController < ApplicationController

  def search
    Place.near(params[:search][:c] || params[:search][:q])
  end

end