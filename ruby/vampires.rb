=begin
vampire_name = true
correct_age = true
likes_garlic = true
wants_insurance = true


=end



puts "What is your name?"
name = gets.chomp
if name == "Drake Cula" || name == "Tu Fang"
  vampire_name = true
else
  vampire_name = false
end

puts "How old are you?"
  age = gets.chomp
puts "What year were you born?"
  birthday_year = gets.chomp


if age.to_i == (2017 - birthday_year.to_i)
  correct_age = true
  # if the age is correct, not a vampire
else
   correct_age = false
end


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

case
when (correct_age && (likes_garlic || wants_insurance))
  if true && !vampire_name
    puts "Probably not a vampire"
  else true && vampire_name
    puts "Definitely a vampire"
  end
end

#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
case
when !(!correct_age && !(likes_garlic || wants_insurance))
  if true
    puts "Probably a vampire"
  else false
  end
end
  # !(false and (false or both false))


# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
case
when !(!correct_age && !likes_garlic && !wants_insurance)
  # !(false and false and false)
  if true
    puts "Almost certainly a vampire"
  end
else
  "Results inconclusive"
end
# I'm really confused by the two middle conditions, they are almost the same thing. the more i worked on them, the more messy they became.







