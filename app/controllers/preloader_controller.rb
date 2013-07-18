class PreloaderController < ApplicationController

def save

    newswire_content = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles = JSON.parse(newswire_content)['results']

    @geolocations = []
    @url = []

    @newswire_articles.each do |article|
      @geolocations << article['geo_facet']
      @url << article['url']
    end

    newswire_content_two = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=20&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles_two = JSON.parse(newswire_content_two)['results']

    @newswire_articles_two.each do |article|
      @geolocations << article['geo_facet']
    end

    newswire_content_three = open("http://api.nytimes.com/svc/news/v3/content/all/all/.json?&offset=40&api-key=ae3c6baac9d440ef0696435d6aaacfb3:2:67872659").read

    @newswire_articles_three = JSON.parse(newswire_content_three)['results']

    @newswire_articles_three.each do |article|
      @geolocations << article['geo_facet']
    end



    @points_to_map = @geolocations.select { |item| item.is_a? Array }.flatten



  end

    # @article_to_save = []

    # @geolocations.each do |nyt_article|
    #   binding.pry
    #   unless nyt_article[0] == nil
    #     @article_to_save << nyt_article[0]
    #   end

    #     @article_to_save.each do |nyt_article|
    #       binding.pry
    #       @saved_article = Location.new(:address => "#{nyt_article}")
    #       @saved_article.address = nyt_article
    #       @saved_article.save

      # Location.where(address: "#{@saved_article}")

      #   saved_article = Location(:url, "#{nyt_article_url}")

      #       saved_article.url = nyt_article_url

      #     saved_article.save
      #   end
      # end

# @article_to_save = []
#     @geolocations.each do |nyt_article|
#       unless nyt_article[0] == nil
#         @article_to_save << nyt_article[0]
#       end
#         @article_to_save.each do |nyt_article|
#           saved_article = Location.where(:url => nyt_article.url).first_or_initialize
#           saved_article.address=nyt_article.address
#           saved_article.url=nyt_article.url
#           saved_article.save
#         end
#       end


    # @address_to_save = []
    # @geolocations.each do |location|
    #   unless location[0] == nil
    #     @address_to_save << location[0]
    #   end
    #     @address_to_save.each do |saved_article|
    #       saved_article = Location.new(:address => "#{saved_article}")
    #       saved_article.save
    #     end
    # end




  def view
   render do|f|
    f.html
    f.js
   end
  end

  # def geocoded_points
  #   @geocoded_points = Location.geocoded_points
  #   render :json => @geocoded_points
  # end


end