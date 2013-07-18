class HomeController < ApplicationController

  def index
    content = open("http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=e1e84aebb55e5ce8373c0ab00071b821:7:67872659").read

    @articles = JSON.parse(content)['results']


    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles = JSON.parse(newswire_content)['results']

    @geolocations = []

    @newswire_articles.each do |article|
      @geolocations << article['geo_facet']
    end

    @points_to_map = @geolocations.select { |item| item.is_a? Array }.flatten

    @points_to_map.each do |saved_point|
      new_location = Location.new(:address => "#{saved_point}")
      new_location.address = saved_point
      new_location.save
    end

  end


  def view
   render do|f|
    f.html
    f.js
   end
  end


  def geocoded_points
    @geocoded_points = Location.geocoded_points
    render :json => @geocoded_points
  end


end
