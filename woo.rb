require 'parser'

b = <<EOF



>:(
%iruby% 1.upto(100) {|x| #iruby#

.p<>

%pruby% "a" #pruby#
.ep
%iruby% } #iruby#





EOF
a = Parser.new(b)
a.change
puts a.text
