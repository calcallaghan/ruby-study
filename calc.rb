puts 'Hello, what\'s your last name?'
lastname = gets.chomp
puts 'Your last name is ' + lastname + '? Cool.'
puts 'What do your friends call you?'
nickname = gets.chomp
puts 'Sweet. Get a life, ' + nickname + '. :)'
puts 'Do you have a favorite number?'
fave = gets.chomp.to_i
newfave = (fave * 10).to_s
puts 'Your favorite number is ' + fave.to_s + '? Cool, but ' + newfave + ' is 10X better.'
