# santa class
class Santa

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  end

  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

end

#Driver Code
santa = Santa.new
santa.eat_milk_and_cookies("chocolate chip")
santa.speak