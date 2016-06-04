# Create a method titled "designer."
# In hash, initiate keys for name (string), address (string), has_kids (boolean), has_pets (boolean), fave_style (string), rooms (integer), budget (integer)
# Write puts command to prompt user for each piece of information. Store responses as values to corresponding hash.
# Write puts command to ask the user if they would like to make any changes. Prompt the user to enter "none" if no changes needed.
  # If yes, 
  # If none, print the contents of the hash using .each_value


def designer
  changes = true
  until changes == false do
  applicant = {}
  puts "Please enter your name"
  applicant[:name] = gets.chomp
  puts "What is your address?"
  applicant[:address] = gets.chomp
  puts "Do you have children? (y/n)"
  has_kids = gets.chomp
  applicant[:has_kids] = ["Yes", "yes", "Y", "y"].include?(has_kids)
  puts "Do you have pets?"
  has_pets = gets.chomp
  if has_pets == "Yes"
    has_pets = true
  else
    has_pets = false
  end
  puts "How many rooms does your home have?"
    applicant[:rooms] = gets.to_i
  puts "What is your budget for rennovations?"
    applicant[:budget] = gets.to_i
  puts "Would you like to make any changes?"
  changes = gets.chomp
  if changes == "Yes"
    changes = true
    puts "What would you like to change?"
    change_value = gets.chomp
    puts "What do you want the value #{change_value} to be?"
    applicant[:change_value] = gets.chomp
  else
    changes = false
  end
  end
return applicant
end

puts designer
