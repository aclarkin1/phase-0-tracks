## Tennis racquet class
# Establish a class titled "Racquet"
# Use initialize to set instance variables for weight(integer), string pattern(string), and feel(string)
# Establish methods to return text describing the instance variables.

class Racquet
  def initialize(weight, string_pattern, feel)
    @weight = weight
    @string_pattern = string_pattern
    @feel = feel
  end
  
  def weight
    puts "The racquet has a weight of #{@weight} ounces"
  end
  
  def string_pattern
    puts "The #{@string_pattern} provides a good mix of spin and control."
  end
  
  def feel
    puts "The racquet has a #{@feel} feel."
  end
end

# Test class methods
racquet = Racquet.new(11.2, "18 x 20", "soft")
racquet.weight
racquet.string_pattern
racquet.feel