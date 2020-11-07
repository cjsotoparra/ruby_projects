puts "Enter your first name"
f_name = gets.chomp
puts"Enter your last name"
l_name = gets.chomp
puts "Your full name is #{f_name} #{l_name}"
puts "Your full name reveresed is #{f_name.reverse} #{l_name.reverse}"

len = f_name.length + l_name.length

puts "Your name has #{len} characters in it"
