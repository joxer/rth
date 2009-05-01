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
