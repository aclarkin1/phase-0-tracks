## Tennis racquet class
# Establish a class titled "Racquet"
# Use initialize to set instance variables for weight(integer), string pattern(string), and feel(string)
# Establish methods to return text describing the instance variables.
# Use attr_reader and attr_accessor to make all 3 variables readable and writable.

class Racquet
  attr_reader :weight, :string_pattern, :feel, :racquet_array
  attr_accessor :weight, :string_pattern, :feel, :racquet_array

  def initialize(weight, string_pattern, feel)
    @weight = weight
    @string_pattern = string_pattern
    @feel = feel
    @@racquet_array = []
  end
  
  def ounces
    puts "The racquet has a weight of #{@weight} ounces"
  end
  
  def strings
    puts "The #{@string_pattern} string pattern provides a good mix of spin and control."
  end
  
  def touch
    puts "The racquet has a #{@feel} feel."
  end
  
  def collect
    @@racquet_array << @weight
    @@racquet_array << @string_pattern
    @@racquet_array << @feel
  end
  
  def print_collect
    p @@racquet_array
  end
end

## Test class methods
#racquet = Racquet.new(11.2, "18 x 20", "soft")
#racquet.weight
#racquet.string_pattern
#racquet.feel

#Establish user interface to ask user for each variable
#Establish an empty array titled racquet_array
#Push each instance variable to array
#Initiate a loop to repeat questions until user types "Done"

#racquet_array = []
racquet = Racquet.new(11.2, "18 x 20", "soft")
done = false
until done == true
  puts "How heavy would you like your racquet to be (in ounces)?"
    racquet.weight = gets.to_i
    racquet.ounces
  puts "What string pattern would you like your racquet to have? We offer 16 x 18, 16 x 19, or 18 x 20."
    racquet.string_pattern = gets.chomp.to_s
    racquet.strings
  puts "What feel would you like your racquet to have? You may choose soft, firm, or crisp"
    racquet.feel = gets.chomp.to_s
    racquet.touch
  racquet.collect
  puts "Press any key to order another racquet. Type 'Done' to exit."
    response = gets.chomp
      if response == "Done"
        done = true
        racquet.print_collect
      else
        done = false  
      end
end

