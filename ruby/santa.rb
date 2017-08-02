# santa class
class Santa
  attr_accessor :gender
  attr_reader :age, :ethnicity

  def initialize (gender, ethnicity, age)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday (age)
    @age = age.to_i + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking[-1] = reindeer
  end

end

#Driver Code
santa = Santa.new("gender fluid", "latinx", 3)
santa.eat_milk_and_cookies("chocolate chip")
santa.speak
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]


#Test setter methods
#santa.get_mad_at("Comet")
# santa.gender = "male"
# santa.celebrate_birthday(35)

# create santas with randomly generated genders and ethnicities
## create arrays
santas = []
example_genders = ["pangender", "genderless", "hijra", "agender", "female", "bigender", "male", "female", "gender fluid",  "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "latinx", "Indian-American", "Mystical Creature (unicorn)", "N/A"]
#create age range in array
age = *(0..140).to_a

# generate santas
10.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, age.sample)

end

# test new santas array
santas[3].celebrate_birthday(45)
p santas[3]


