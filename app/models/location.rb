class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :url

  geocoded_by :address, :if => :address_changed?
  after_validation :geocode



  def self.geocoded_points

    geo_data = []

    Location.by_location.each do |point|
      geo_data << { lat:point.latitude, lng:point.longitude, count:point.count * 100 }
    end

    geo_data
  end

  def self.by_location
    all(:select => "latitude, longitude, COUNT(*) as count", :group => "latitude, longitude")
  end
end