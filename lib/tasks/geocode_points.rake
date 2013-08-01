task :geocode_points => :environment do

  def self.geocoded_points

    geo_data = []

    Location.by_location.each do |point|
      geo_data << { lat:point.latitude, lng:point.longitude, count:point.count * 25 }
    end

    geo_data
  end

  def self.by_location
    all(:select => "latitude, longitude, COUNT(*) as count", :group => "latitude, longitude")
  end

end