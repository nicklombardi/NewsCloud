class HomeController < ApplicationController

  def index
    content = open("http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=e1e84aebb55e5ce8373c0ab00071b821:7:67872659").read

    @articles = JSON.parse(content)['results']


    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles = JSON.parse(newswire_content)['results']

    @geolocations = @newswire_articles.map { |article| article['geo_facet'] }


    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=20&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles_two = JSON.parse(newswire_content)['results']

    @geolocations << @newswire_articles_two.map { |article| article['geo_facet'] }


    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=40&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles_three = JSON.parse(newswire_content)['results']

    @geolocations << @newswire_articles_three.map { |article| article['geo_facet'] }


    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=60&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles_four = JSON.parse(newswire_content)['results']

    @geolocations << @newswire_articles_four.map { |article| article['geo_facet'] }


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
