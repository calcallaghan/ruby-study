lineWidth = 50
var = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 72', 'Chapter 3: Variables', 'page 118']

puts var[0].center lineWidth
puts
puts var[1].ljust(lineWidth/2) + var[2].rjust(lineWidth/2)
puts var[3].ljust(lineWidth/2) + var[4].rjust(lineWidth/2)
puts var[5].ljust(lineWidth/2) + var[6].rjust(lineWidth/2)
