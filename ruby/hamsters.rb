
puts "What's the hamster's name?"
  name = gets.chomp
puts "Volume level?"
  volume = gets.chomp.to_f
puts "Fur Color?"
  furcolor = gets.chomp
puts "Is hamster a good candidate for adoption?"
  adoptable = gets.chomp.downcase
  if adoptable == "yes" || adoptable == "y"
    adoptable = true
  else
    adoptable = false
  end
puts "Estimated age?"
  age = nil
  age = gets.chomp.to_f


puts "*" * 50
puts "Name: #{name}"
puts "Volume Level: #{volume}"
puts "Fur color: #{furcolor}"
puts "Hamster is adoptable: #{adoptable}"
puts "Age: #{age}"
puts "*" * 50