class Santa
  attr_accessor :name, :age, :ethnicity, :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  #setter method to change Reindeer's place in reindeer_ranking
  #def get_mad_at(reindeer_name)
  #  @reindeer_ranking.rotate!(reindeer_name)
  #  puts @reindeer_ranking
  #end
  
  ##setter method to change @gender from outside class definition
  #def gender=(new_gender)
  #  @gender = new_gender
  #end
  
  ##getter method to return age
  #def age
  #  @age
  #end
  
  ##getter method to return ethnicity
  #def ethnicity
  #  @ethnicity
  #end
  
  ##getter method to return gender
  #def gender
  #  @gender
  #end
  
  #setter method to update age attribute
  def celebrate_birthday
    @age = @age + 1
  end

  def test
    puts "This is a #{@gender} santa whose ethnicity is #{@ethnicity}."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  
end

## Call class methods
#santa = Santa.new("agender", "black")
#puts "This Santa is #{santa.age} years old. His ethnicity is #{santa.ethnicity}. Santa's gender is #{santa.gender}"
#santa.gender = "Male"
#santa.age = 7
#santa.ethnicity = "Jewish"
#santa.celebrate_birthday
#puts "This Santa is #{santa.age} years old. His ethnicity is #{santa.ethnicity}. Santa's gender is #{santa.gender}"


##Commenting out interation
#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white","Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

##Algorithm to build many, many santas
# Initiate a loop to 50 set index to 0
# Set an array containing example genders
# Set an array containing example ethnicities
# Set array containing numbers 1-140.
# Use .sample to select a random gender, ethnicity and age from arrays. Update instance variables.
# Print reader code to verify that code works

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white","Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age_range=*(0..141)

index = 0
until index == 50
  santa = Santa.new("agender", "black")
  santa.gender = example_genders.sample
  santa.ethnicity = example_ethnicities.sample
  santa.age = age_range.sample
  puts "This Santa's gender is #{santa.gender} and has an ethnicity of #{santa.ethnicity}. Santa is #{santa.age} years old."
  index += 1
end
