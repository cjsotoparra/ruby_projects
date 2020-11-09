#if/else conditionals in ruby

#if true != false
#	puts "hello"
#else
#	puts "bye"
#end
#
#	puts "something"

puts "Simple Calculator"
20.times{print"-"}
puts
puts "Please enter your first number"
f_num = gets.chomp
puts "Please enter your second number"
s_num = gets.chomp
puts "what do you want to do"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp
puts "You selected #{user_entry}"

if user_entry == "1"
	result = f_num.to_i * s_num.to_i
	puts "#{f_num} * #{s_num} = "  + result.to_s
elsif user_entry == "2"
        result = f_num.to_i + s_num.to_i
        puts "#{f_num} * #{s_num} = "  + result.to_s
elsif user_entry == "3"
        result = f_num.to_i - s_num.to_i
        puts "#{f_num} * #{s_num} = "  + result.to_s
else
	puts "You didn't choose a number"
end
