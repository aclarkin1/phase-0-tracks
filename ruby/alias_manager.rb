# Convert the "name" string "full name" to an array using split command. This will return the first name and last name as separate elements.
# Reverse the order of first and last names using reverse command.
# Extract each name from the array using at method. Store new arrays as first_name and last_name.
# Split first_name and last_name into individual characters using the split command. Store as arrays first_array and last_array.
# Advance each letter in first_name and last_name by using map and .next.
# Join the characters together using join command. Save as variables new_first and new_last.
# Create a new array containing new_first and new_last. Save as new_name array.

# Initiate the user to input their name using puts command. Save input as variable "name"
# Initiate a loop using "until" quit = true


def name_tool
  quit = false
  until quit == true do
  puts "Please enter your name"
  name = gets.chomp
#  vowels = ["u", "a", "e", "i", "o", "u", "a"]
#  consonants = [z, b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z, b]
#  name = "Aaron Larkin"
  full_name = name.split
  reverse_name = full_name.reverse
  first_name = reverse_name.at(0)
  last_name = reverse_name.at(1)
#  puts first_name
  first_array = first_name.split('')
  last_array = last_name.split('')
  first_array.map! { |first_array| first_array.next}
  last_array.map! { |last_array| last_array.next}
  new_first = first_array.join
  new_last = last_array.join
  new_name = [new_first, new_last]
  puts new_name
  puts "Press enter to repeat. Type 'Quit' to exit."
    response = gets.chomp
      if response == "Quit"
        quit = true
      else
        quit = false
      end
  end
end

name_tool
