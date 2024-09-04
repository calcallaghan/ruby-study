puts 'Type anything, one word per line.'
inputs = []
input = gets.chomp

while input !=''
  inputs.push input
  input = gets.chomp
end

puts inputs.sort
