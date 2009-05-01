class Skeleton

  def self.create(text, css = 0)
    
    return <<EOF

<html>
 <head>
 #{"<link rel='stylesheet' type='text/css' href='stile.css'/>" if css != 0}
 </head>

 <body>

#{text}

 </body>
</html>
EOF

  end

end





