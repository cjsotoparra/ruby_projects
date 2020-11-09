a = [1,2,3,4,"Hello",5,6]

p a.last
p a.first

p a.shuffle!
p a

a[a.length] = "new"
#p a

a.each do |items|
 print items.to_s + " "
end
puts
