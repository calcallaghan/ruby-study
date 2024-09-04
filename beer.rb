bottle = 99
bword = 'bottles'
while bottle != 0
puts(bottle.to_s + bword + " of beer on the wall!")
puts(bottle.to_s + bword + " of beer!")
puts("Take one down and pass it around!")
bottle = bottle - 1
if bottle == 1
bword = ' bottle'
else
bword = ' bottles'
end
puts(bottle.to_s + bword + " of beer on the wall!")
puts ''
end


