class Student

	attr_accessor :first_name, :last_name, :email, :username

	@first_name
	@last_name
	@email
	@username
	@password

	def initialize(firstname, lname, email, username, password)
		@first_name = firstname
		@last_name = lname
		@email = email
		@username = username
		@password = password
	end

	def to_s
		"First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address #{@email}"
	end
end

christ = Student.new("Christ", "Some last name", "asd@example.com", "someName", "password1")
puts christ
