sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {:name => 'christian', 'favcolor' => 'green'}

p my_details

my_details.each do |key, value|
 p "The class for key is #{key.class} and the value is #{value.class}"
end

my_details["age"] = 3

p my_details
