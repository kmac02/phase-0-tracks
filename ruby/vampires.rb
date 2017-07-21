puts "What is your name?"
name = gets.chomp

puts "How old are you?"
  age = gets.chomp
puts "What year were you born?"
  birthday_year = gets.chomp

=begin
if age.to_i == (2017 - birthday_year.to_i)
  age_right = true
  # if the age is correct, not a vampire
else
  age_right = false
end
=end


puts "Should the cafeteria order extra garlic bread for you?"
garlic_bread = gets.chomp
if garlic_bread == "yes"
  likes_garlic = true
  # means not a vampire
else
  likes_garlic = false
end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == "yes"
  wants_insurance = true
else
  wants_insurance = false
end


if age_right && (likes_garlic || wants_insurance)
  puts "Probably not a vampire"
elsif !age_right && !likes_garlic
  puts "Probably a vampire"
else
  puts "results inconclusive"
end
