require 'rake'
require 'main.rb'
css = ENV['css']
css = 0 if css == nil

desc "run build"
task :default => :build do
  
end

desc "build the files"
task :build do

  Main.new(css).assemble
 
end

desc "remove all files into html/"
task :remove do
  
  FileUtils.remove_entry "html"
  FileUtils.mkdir "html"

end

desc "remove all files into html/ and files/"
task :clean => :remove do 
  
  FileUtils.remove_entry "files"
  FileUtils.mkdir "files"

end

