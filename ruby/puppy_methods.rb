class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(times)
    index = 0
    until index == times
      puts "Woof!"
      index += 1
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_years = 10.5 + (human_years-2) *4
    puts dog_years
  end
  
  def fav_treat(dog, snack)
    puts "#{dog} loves to eat #{snack}!"
  end
  
  def initialize
    puts "Initializing new puppy instance..."
  end
end

#Puppy.new.fetch("ball")
#Puppy.new.speak(5)
#Puppy.new.roll_over
#Puppy.new.dog_years(5)
#Puppy.new.fav_treat("Chookah", "peanut butter pretzles")
#Puppy.new.initialize

class Run
  
  def initialize(distance)
    @distance = distance
  end
  
  def sprint
    puts "#I can sprint #{@distance} meters in my sleep!"
  end
  
  def jog
    puts "It's one of those easy #{@distance} mile jog kind of days..."
  end

end


# Initiate a loop. Set distance index equal to 0. Repeat loop until index equals 49.
# Initiate an array with an integer of 5. Title array distances.
# Iniate an empty array. Title array as runs. Store distances in runs array.
# Each time loop repeats, increase the last value in distances by 1. Store as variable new_distance.
# Increase until new_distance equals 15. When new_distance = 15, make new_distance equal to 5.
# Store new_distance in distances arrray.
# Iterate over array. For each instance (i.e distance), call .jog method
# Push each iteration into runs array


distances = [5]
runs = []

index = 0
until index == 49
  new_distance = distances[-1] += 1
    if new_distance >= 15
      new_distance = 4
    else
      new_distance
    end
  distances << new_distance
  index +=1
end

distances.each do |distance|
  runs << Run.new(distance)
  puts "Runner has gone for #{runs.length} runs!"
end

runs.each do |run|
  run.jog
end

p runs