puts 'What is your first name?'
firstname = gets.chomp
puts 'What is your middle name?'
midname = gets.chomp
puts 'What is your last name?'
lastname = gets.chomp
puts 'Did you know there are ' + (firstname.length.to_i + midname.length.to_i + lastname.length.to_i).to_s + ' characters in your name, ' + firstname + '?'
