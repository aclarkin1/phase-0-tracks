puts "What is the hamster's name?"
  name = gets.chomp
puts "How loud is #{name} on a scale of 1-10? (10 being the loudest)"
  volume = gets.to_i
puts "What color is #{name}'s hair?"
  hair_color = gets.chomp
puts "Is #{name} a good candidate for adoption?"
  eligibility = gets.chomp
puts "About how old is #{name}?"
  age = gets.to_i

puts "#{name} is a nice hamster with #{hair_color} hair."

if age == 0
  puts "#{name}'s age is currently unknown."
else
  puts "#{name} is currently #{age} years old."
end

if eligibility == "Yes"
  puts "#{name} is an excellent candidate for adoption."
elsif eligibility == "No"
  puts "#{name} is happy at the Hamster Home and is not up for adoption at this time."
else
  puts "We are currently assessing if #{name} is eligible for adoption."
end
  
if volume <= 5
  puts "#{name} is not very loud and will be well-suited to living in small spaces."
else
  puts "#{name} enjoys making noise and should live in a home that tolerates his joyful cheers."
end