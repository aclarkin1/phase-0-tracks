def french_open
  name1 = "Garbine Muguruza"
  title1 = "women's singles"
  puts "The French Open is the most prestigious tennis tournament played on clay."
  yield(title1, name1)
end
  
french_open { |title1, name1| puts "The winner of the French Open 2016 in #{title1} is #{name1}" }

jersey_number = {"Emre Can" => 6, "Luis Suarez" => 7, "Steven Gerrard" => 8, "Fernando Torres" => 9}

jersey_number.each do |players, shirt|
  puts "#{players} wore the number #{shirt} for Liverpool"
end

jersey_number.map do |players, shirt|
  puts "In an upcoming charity match, #{players} will instead wear number #{shirt.next}"
end

jersey_number = {"Emre Can" => 6, "Luis Suarez" => 7, "Steven Gerrard" => 8, "Fernando Torres" => 9}

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
jersey_number.delete_if{|player, shirt| shirt >= 8 }

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
jersey_number.keep_if{|player, shirt| shirt >=8 }

# A different method that filters a data structure for only items satisfying a certain condition

jersey_number.select{|player, shirt| player.include?("Steven")}

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

jersey_number.reject{|player, shirt| shirt < 8}