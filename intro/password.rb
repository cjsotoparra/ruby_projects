require 'bcrypt'

users = [
	{ username: "chris", password: "password1" },
	{ username: "jack", password: "password2" },
	{ username: "arya", password: "password3" },
	{ username: "jonsnow", password:"password4" },
	{ username: "zach", password:"password5" }
]

def create_hash_digest(password)
	BCrypt::Password.create(password)
end

def verify_hash_digest(password)
	BCrypt::Password.new(password)
end

def create_secure_users(users)
	users.each do |user_record|
		user_record[:password] = create_hash_digest(user_record[:password])
	end

	return users
end

#puts users.class
puts create_secure_users(users)
#new_password = create_hash_digest("password1")
#puts new_password = "password2"
