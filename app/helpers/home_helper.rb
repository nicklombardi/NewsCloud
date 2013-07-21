module HomeHelper

  def format(string)
    string.gsub("&#8216;", "\'").gsub("&#8217;", "\'").gsub("&#8220;", "\"").gsub("&#8221;", "\"")
  end

  def paren_removal(paren_string)
    paren_string.gsub("(", "").gsub(")", "")
  end

  # def google_maps_api_key
  #   "AIzaSyAp6_SjiivjEj-5rpqzHxi4F4u-2p40tIQ"
  # end

  # def google_api_access
  #   "https://maps.googleapis.com/maps/api/js?key=AIzaSyAp6_SjiivjEj-5rpqzHxi4F4u-2p40tIQ&sensor=false"
  # end

end