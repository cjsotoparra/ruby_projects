users = [
		{ username: "chris", password: "password1" },
		{ username: "jack", password: "password2" },
		{ username: "arya", password: "password3" },
		{ username: "jonsnow", password:"password4" },
		{ username: "zach", password:"password5" },
]

def auth_user(uname, pword, list_of_users)
	
        list_of_users.each do |user_record|
                if user_record[:username] == uname && user_record[:password] == pword
                        return user_record
                end
        end

	return "Credentials were not correct"
end

puts "Welcome to the authenticator"
30.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1

while attempts < 4
	print "Username: "
	uname = gets.chomp
	print "Password: "
	pword = gets.chomp

	#call auth_user
	authentication = auth_user(uname, pword, users)
	puts authentication

	#Exit condition
	puts "Press n to quit or any other key to continue: "
	input = gets.chomp.to_s.downcase
	break if input == "n"

	attempts = attempts + 1
end

puts "You have exceeded the number of attempts" if attempts >= 4
