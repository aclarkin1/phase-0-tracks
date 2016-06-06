# Convert the "name" string "full name" to an array using split command. This will return the first name and last name as separate elements.
# Reverse the order of first and last names using reverse command.
# Extract each name from the array using at method. Store new arrays as first_name and last_name.
# Split first_name and last_name into individual characters using the split command. Store as arrays first_array and last_array.
# Advance each letter in first_name and last_name by using map and .next.
# Join the characters together using join command. Save as variables new_first and new_last.
# Create a new array containing new_first and new_last. Save as new_name array.
# Convert new_name array to a string using * " ". Store as new_name_string

# Initiate the user to input their name using puts command. Save input as variable "name"
# Initiate a loop using "until" quit = true. Quit is true if user types "Quit" at end. Otherwise, repeat loop.

# Initiate a hash to store name and new_name. Title the hash both_names. Name = key, new_name = value.

#def name_tool
#  quit = false
#  until quit == true do
#  both_names = {}
#  puts "Please enter your name"
#  both_names[:name] = gets.chomp
#  full_name = both_names[:name].split
#  reverse_name = full_name.reverse
#  first_name = reverse_name.at(0)
#  last_name = reverse_name.at(1)
#  first_array = first_name.split('')
#  last_array = last_name.split('')
#  first_array.map! { |first_array| first_array.next}
#  last_array.map! { |last_array| last_array.next}
#  new_first = first_array.join
#  new_last = last_array.join
#  new_name = [new_first, new_last]
#  both_names[:new_name_string] = new_name * " "
##  puts both_names[:new_name_string]
#  puts "Press enter to repeat. Type 'Quit' to exit."
#    response = gets.chomp
#      if response = ["Quit", "quit"].include?(response)
#        quit = true
#      else
#        quit = false
#      end
#  end
#name_array = []
#name_array << all_names = both_names.each_value{|value| puts value}
#puts all_names
##puts both_names[:new_name_string]
#both_names.each do |name1, name2|
#  puts "#{name1} is actually #{name2}"
#puts both_names
#both_names.each_value do puts "Surprise! #{both_names.fetch(:new_name_string)} is actually #{both_names.fetch(:name)}"
#end
##puts both_names["new_name_string"]
##return both_names
##both_names.map do |name, new_name_string|
##puts "Surprise! #{new_name_string} is actually #{name}"
#end
#end

results = {}

def name_tool(name)
  full_name = name.split
  reverse_name = full_name.reverse
  first_name = reverse_name.at(0)
  last_name = reverse_name.at(1)
  first_array = first_name.split('')
  last_array = last_name.split('')
  first_array.map! { |first_array| first_array.next}
  last_array.map! { |last_array| last_array.next}
  new_first = first_array.join
  new_last = last_array.join
  new_name = [new_first, new_last]
  new_name_string = new_name * " "
end



puts "Please enter your name"
  name = gets.chomp.to_s
  p name_tool(name)
  results[name] = name_tool(name)
  quit = false
  until quit == true do
      puts "Press enter to repeat. Type 'Quit' to exit."
          response = gets.chomp
            if response = ["Quit", "quit"].include?(response)
              quit = true
            else
              quit = false
              puts "Please enter your name"
              name = gets.chomp.to_s
              p name_tool(name)
              results[name] = name_tool(name)
            end
  end

p results
