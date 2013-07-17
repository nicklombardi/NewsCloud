class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

  geocoded_by :address, :if => :ip_address_changed?
  after_validation :geocode

  def self.geocoded_clicks
    geo_data = []

    Location.by_location.each do |click|
      geo_data << { lat:click.latitude, lng:click.longitude, count:click.count * 100 }
    end

    geo_data
  end

  def self.by_location
    all(:select => "latitude, longitude, COUNT(*) as count", :group => "latitude, longitude")
  end
end