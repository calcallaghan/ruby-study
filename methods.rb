puts 'What is your first name?'
name = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp
puts 'Did you know there are ' + (name.length + mname.length + lname.length).to_s + ' characters in your full name, ' + name + '?' 
