dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
	return somehash.keys
	#print all cities
	#somehash.each do |key|
	#	p key[0]
	#end
# Write code here
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
	return somehash[key]
# Write code here
end

# Execution flow
loop do
# Write your program execution code here
	puts "Do you want to lookup an area code based on a city name?(Y/N)"
	input = gets.chomp.downcase
	
	if input == "y"
		puts "Which city do you want the area code for?"
		puts get_city_names(dial_book)
		puts "Enter your selection"
		input2 = gets.chomp.downcase

		#error check		
		if dial_book.key?(input2)
			puts get_area_code(dial_book, input2)
		else
			puts "City not yet listed"
		end
	else
		break
	end
end
