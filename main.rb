require 'parser'
require 'opener'
require 'skeleton'
class Main


  def initialize
    
    @files = Dir.entries("files")
    @files.delete(".")
    @files.delete("..")
    @text = []
    @links = []
  end
  
  
  def assemble
    
    puts "assembling...."
    @files.each do |x|
      begin
        print "=> #{x} processing...   "
        @links << "<a href='#{x}.html'>#{x}</a><br/>"
        @text <<  IO.readlines("files/"+x).join
        puts "done!"
      rescue 
        puts "failed!"
      end
    end

    0.upto(@links.length - 1).each do |x|
      Write.to_file(@files[x], Skeleton.create( Parser.new(@text[x]).change() ))
    end

    #open the main page

    
    File.open("main.html", "w") do |x|
      x.puts Skeleton.create(@links.join)
    end

  end
  

end

Main.new.assemble
