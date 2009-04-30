require 'erb'

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
end

class Parser

  attr_reader :text
  def initialize(text)
    
    @text = text
    @attribute = []
  end
  
  def change
        @text = Elements.eval(@text)
    @text.scan(/\.\w+</).each {|x| @attribute << x.gsub(".", "").gsub("<", "")} #scan for tag
    @attribute.each do |s|
      
      @text = Elements.send s, @text
      
    end
    return @text
  end

end
