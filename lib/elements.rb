class Elements

  def self.div(text) 
    return  text.gsub(/\.ediv/,  "</div>").gsub(".div<", "<div")
  end

  def self.p(text)
    return  text.gsub(".p<", "<p").gsub(".ep", "</p>")
  end
  
  def self.eval(text)
    text = text.gsub("%iruby%", "<%").gsub("#iruby#", "%>")
    text = text.gsub("%oruby%", "<%=").gsub("#oruby#", "%>")
    return ERB.new(text).result
  end

  def self.img(text)

    return text.gsub(".img<")
  end
  
  def self.center(text)

    return text.gsub(".center", "<center>").gsub(".ecenter", "</center>")
  end
# .img<
end
