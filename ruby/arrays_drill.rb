#Initialize an empty array

favorite_tennis_players = []

# Add five items to your array

favorite_tennis_players.push('Roger Federer', 'Agnieszka Radwanska', 'Stan Wawrinka', 'Garbine Muguruza', 'Dominic Thiem')

# Print the array

favorite_tennis_players

# Delete the item at index 2

favorite_tennis_players.delete_at(2)

#Insert a new item at index 2

favorite_tennis_players.insert(2, "Andy Murray")

# Remove the first item of the array without having to refer to its index.

favorite_tennis_players.delete("Roger Federer")

# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

favorite_tennis_players.include?("Andy Murray")

# Initialize another array that already has a few items in it.

favorite_all_time = ["John McEnroe", "Boris Becker", "Andre Agassi"]

# Add the two arrays together and store them in a new variable.

favorite_complete = favorite_all_time + favorite_tennis_players

def build_array(x,y,z)
  arr = []
  arr.push(x,y,z)
end

p build_array(1, "two", nil)

# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. 

def add_to_array(arr, value)
  arr.push(value)
end

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2,], 3)
p add_to_array(["walk", "run"], "sprint")