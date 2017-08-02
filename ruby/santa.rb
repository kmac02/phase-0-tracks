# santa class
class Santa

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

  def gender_set=(gender_ident)
    @gender = gender_ident
  end
end

#Driver Code
santa = Santa.new("gender fluid", "latinx")
santa.eat_milk_and_cookies("chocolate chip")
santa.speak
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

#Test setter methods
p santa.get_mad_at("Comet")
p santa.gender_set = "male"
p santa.celebrate_birthday(35)
