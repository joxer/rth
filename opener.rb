class Open
  def read(file)
   
    text = IO.readlines(file).join
 
    return text

  end

end

class Write

  def self.to_file(file, text)
    
    File.open(file+".html", "w") {|x| x.puts(text);x.close}

  end
end
