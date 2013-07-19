class SearchController < ApplicationController

  def search
    Location.near(params[:search][:c] || params[:search][:q])
  end

end