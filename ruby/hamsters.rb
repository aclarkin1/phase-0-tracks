puts "What is the hamster's name?"
  name = gets.chomp
puts "How loud is the #{name} on a scale of 1-10? (10 being the loudest)"
  volume = gets.to_i
puts "What color is #{name}'s hair?"
  hair_color = gets.chomp
puts "Is #{name} a good candidate for adoption?"
  eligiblity = gets.chomp
puts "About how old is #{name}?"
  age = gets.to_i

if age == ""
  age = nil
end  

if age == nil
  puts "#{name}'s age is unknown."
end