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

Puppy.new.fetch("ball")
Puppy.new.speak(5)
Puppy.new.roll_over
Puppy.new.dog_years(5)
Puppy.new.fav_treat("Chookah", "peanut butter pretzles")
Puppy.new.initialize

class Run
  
  def initialize
    @runner = "Aaron"
  end
  
  def sprint(distance_in_meters)
    puts "#{@runner} can sprint #{distance_in_meters} meters in his sleep!"
  end
  
  def jog(distance_in_miles)
    puts "It's one of those easy #{distance_in_miles} mile jog kind of days..."
  end
  
end

Run.new.sprint(200)
Run.new.jog(5)