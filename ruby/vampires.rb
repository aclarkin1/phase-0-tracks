puts "What is your name"
  name = gets.chomp
puts "How old are you?"
  age = gets.to_i
puts "What year were you born?"
  dob = gets.to_i
puts "Our company serves garlic bread. Should we order some for you?"
  bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

case
when (name == "Drake Cula" || name == "Tu Fang")
  puts "Definitely a Vampire"
when insurance == "Yes" && bread == "Yes"
  puts 'Probably not a Vampire'
when insurance == "No" && bread == "No"
  puts 'Almost certainly a Vampire.'
when insurance == "No" || bread == "No"
  puts 'Probably a Vampire.'
else
  puts 'More information needed.'
end