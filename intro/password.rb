module Password
	require 'bcrypt'

#	users = [
#		{ username: "chris", password: "password1" },
#		{ username: "jack", password: "password2" },
#		{ username: "arya", password: "password3" },
#		{ username: "jonsnow", password:"password4" },
#		{ username: "zach", password:"password5" }
#	]

	def Password.create_hash_digest(password)
		BCrypt::Password.create(password)
	end

	def Password.verify_hash_digest(password)
		BCrypt::Password.new(password)
	end

	def Password.create_secure_users(users)
		users.each do |user_record|
			user_record[:password] = create_hash_digest(user_record[:password])
		end

		return users
	end

	def Password.authenticate_user(username, password, list_of_users)
		list_of_users.each do |user_record|
				if (user_record[:username] == username) && (verify_hash_digest(user_record[:password]) == password)
					return user_record
				end
		end

		return "Credentials were not correct"
	end

end
