puts "How many employees do you have?"
  workforce = gets.to_i

i = 0
sum = 0

until sum == workforce do
  i = i + 1
  sum = sum + 1

puts "What is your name"
  name = gets.chomp
puts "How old are you?"
  age = gets.to_i
puts "What year were you born?"
  birthday = gets.to_i
puts "Our company serves garlic bread. Should we order some for you?"
  bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

puts "Please tell us about any allergies you have. One at a time - type 'done' when complete."
  allergy = gets.chomp

until allergy == "Sunshine" || allergy == "Done" do
  allergy = gets.chomp
end

case
when allergy == "Sunshine"
  puts "Probably a Vampire"
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
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."