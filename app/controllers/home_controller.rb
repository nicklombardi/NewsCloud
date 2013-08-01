class HomeController < ApplicationController

  def index
    content = open("http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=e1e84aebb55e5ce8373c0ab00071b821:7:67872659").read

    @articles = JSON.parse(content)['results']

  end


  def view
   render do|f|
    f.html
    f.js
   end
  end

  def show

  end

  def geocoded_points
    @geocoded_points = Location.geocoded_points
    render :json => @geocoded_points
  end


end
