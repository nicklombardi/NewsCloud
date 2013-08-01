task :get_heatmap_data => :environment do

    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles = JSON.parse(newswire_content)['results']

    @geolocations = @newswire_articles.map { |article| article['geo_facet'] }

    # these queries add more locations to search with additional offset ny times api queries:
    # newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=20&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    # @newswire_articles_two = JSON.parse(newswire_content)['results']

    # @geolocations << @newswire_articles_two.map { |article| article['geo_facet'] }


    # newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=40&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    # @newswire_articles_three = JSON.parse(newswire_content)['results']

    # @geolocations << @newswire_articles_three.map { |article| article['geo_facet'] }


    # newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=60&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    # @newswire_articles_four = JSON.parse(newswire_content)['results']

    # @geolocations << @newswire_articles_four.map { |article| article['geo_facet'] }


    @points_to_map = @geolocations.select { |item| item.is_a? Array }.flatten

    @points_to_map.each do |saved_point|
      new_location = Location.new(:address => "#{saved_point}")
      new_location.address = saved_point
      new_location.save
    end





end
