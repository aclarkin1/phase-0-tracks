# Prompt the user to enter their name. Store name as variable "full name"
# Convernt the string "full name" to an array using split command.
# 

#puts "Please enter your name"
#  name = gets.chomp

def name_tool
  name = "Aaron Larkin"
  full_name = name.split
  reverse_name = full_name.reverse
  puts reverse_name
end

name_tool
