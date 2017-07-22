# (LOOP info) Determine how many applications to process
puts "How many applications to process?"
apps_to_process = gets.chomp.to_i

# Begin Loop for each application
until apps_to_process <= 0 #this can be == as well
  puts "What is your name?"
  name = gets.chomp
  if name == "Drake Cula" || name == "Tu Fang"
    vampire_name = true
  else
    not_vampire_name = true
  end

  puts "How old are you?"
    age = gets.chomp
  puts "What year were you born?"
    birthday_year = gets.chomp
  if age.to_i == (2017 - birthday_year.to_i)
    correct_age = true
    # if the age is correct, not a vampire
  else
     incorrect_age = true
  end


  puts "Should the cafeteria order extra garlic bread for you?"
  garlic_bread = gets.chomp
  if garlic_bread == "yes"
    likes_garlic = true
    # means not a vampire
  else
    doesnt_like_garlic = true
  end

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp
  if insurance == "yes"
    wants_insurance = true
  else
    doesnt_want_insurance = true
  end

# DETECTION LOGIC
if correct_age && (likes_garlic || wants_insurance) && not_vampire_name
  puts "Probably not a vampire"
elsif incorrect_age && doesnt_like_garlic && wants_insurance && not_vampire_name
  puts "Probably a vampire"
elsif incorrect_age && likes_garlic && doesnt_want_insurance && not_vampire_name
  puts "Probably a vampire"
elsif incorrect_age && doesnt_like_garlic && doesnt_want_insurance
  puts "Almost certainly a vampire"
elsif correct_age && likes_garlic && wants_insurance
  if vampire_name == true
    puts "Definitely a vampire"
  end
else
  #incorrect age but likes garlic and wants insurance, or correct age but doesn't like garlic or want insurance
  puts "results inconclusive"
end

# i suspect there is a cleaner way to do the above. This is the first strategy i tried where i was able to return only one survey response (versus 2 or 3) no matter the input. (i was pretty excited). I think this would be cleaner using a bang operator but the assignment said it wasn't necessary for this challenge. I look forward to feedback!

  #Begin loop to determine allergies
  puts "Please name your allergies one at a time. Type 'done' when completed"
  some_allergies = gets.chomp #variable must have input before loop can begin.
    while some_allergies != "done"
        if some_allergies == "sunshine"
          puts "Probably a vampire"
          break
        else
          puts "what other allergies?"
          some_allergies = gets.chomp
        end
    end

apps_to_process -= 1
end # end of until apps to process loop



