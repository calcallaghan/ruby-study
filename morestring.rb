lineWidth = 60
str1 = 'Table of Contents'
str2 = 'Chapter 1: Numbers'
str3 = 'Chapter 2: Letters'
str4 = 'Chapter 3: Variables'
p1 = 'page 1'
p72 = 'page 72'
p118 = 'page 118'

puts str1.center lineWidth
puts str2.ljust(lineWidth/2) + p1.rjust(lineWidth/2)
puts str3.ljust(lineWidth/2) + p72.rjust(lineWidth/2)
puts str4.ljust(lineWidth/2) + p118.rjust(lineWidth/2)
