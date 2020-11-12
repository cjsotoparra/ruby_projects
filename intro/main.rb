require_relative 'password'

	users = [
		{ username: "chris", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonsnow", password:"password4" },
    { username: "zach", password:"password5" }
]

hashed_users = Password.create_secure_users(users)
puts hashed_users
