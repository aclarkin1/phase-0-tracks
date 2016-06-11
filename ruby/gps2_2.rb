## Grocery List Organizer
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# input: string of quantities corresponding to each item entered. Integers can be separated by comma without extra space in between (Example: "1,2,3")
# steps:
  # Create empty arrays. One for grocery_items and the other for grocery_quantity.
  # Also create empty hash called grocery_list.
  # Convert items into array and store in grocery_items.
  # Convert quanity into array and store in grocery_quantity. Convert string in array to integer using .map
  # Combine arrays and put into grocery_list hash
  # print grocery_list hash
  # output: hash with items (key) and quantity (value)

def grocery_list_org(items, quantity)
  grocery_list = {}
  grocery_items = []
  grocery_quantity = []

  g_items = items.split(" ")
  g_quantity = quantity.split(",").map {|q| q.to_i}
  grocery_list = g_items.zip(g_quantity)
  grocery_list_hash = Hash[grocery_list]
end

p grocery_list_org("carrots apples cereal pizza", "2,3,1,2")

#def add_item(item, quantity)
#  grocery_list_hash = grocery_list_org("carrots apples cereal pizza", "2,3,1,2")
#  h = {item => quantity}
#  add_item_to_grocery_list_hash = grocery_list_hash.merge(h)
#end

def add_item(item, quantity)
  grocery_list_hash