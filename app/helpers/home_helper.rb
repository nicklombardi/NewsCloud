module HomeHelper

  def format(string)
    string.gsub("&#8216;", "\'").gsub("&#8217;", "\'").gsub("&#8220;", "\"").gsub("&#8221;", "\"")
  end

  def paren_removal(paren_string)
    paren_string.gsub("(", "").gsub(")", "")
  end

end