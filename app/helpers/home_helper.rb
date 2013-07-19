module HomeHelper

  def format(string)
    string.gsub("&#8216;", "\'").gsub("&#8217;", "\'").gsub("&#8220;", "\"").gsub("&#8221;", "\"")
  end

  def paren_removal(paren_string)
    paren_string.gsub("(", "").gsub(")", "")
  end

  def google_maps_api_key
    "AIzaSyAkc8i9GKFIZppGA4s3N9oZmp-Wwq7PR6E"
  end

  # def google_api_url
  #   "http://maps.googleapis.com/maps/api/js"
  # end

  def google_api_access
    "https://maps.googleapis.com/maps/api/js?key=AIzaSyAkc8i9GKFIZppGA4s3N9oZmp-Wwq7PR6E&sensor=false"
  end

end