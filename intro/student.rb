class Student
	@first_name
	@last_name
	@email
	@username
	@password

	def to_s
		"First name: #{@first_name}"
	end 
end

christ = Student.new
puts christ
