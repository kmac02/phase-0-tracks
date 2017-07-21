puts "How many applications to process?"
apps_to_process = gets.chomp.to_i

until apps_to_process == 0
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



  case
  when correct_age && (likes_garlic || wants_insurance)
    if true && !vampire_name
      puts "Probably not a vampire"
    else true && vampire_name
      puts "Definitely a vampire"
    end
  end

  #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  case
  when incorrect_age && (doesnt_like_garlic || doesnt_want_insurance)
    if true
      puts "Probably a vampire"
    else false
    end
  end
    # !(false and (false or both false))

  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  case
  when incorrect_age && doesnt_like_garlic && doesnt_want_insurance
    # (false and false and false)
    if true
      puts "Almost certainly a vampire"
    end
  else false
    puts "Results inconclusive"
  end
  # I'm really confused by the two middle conditions, they are almost the same thing, and the more i worked on them, the messier they became. And when i ran the program, i could only return "Almost certainly..." if I also returned "Probably a vampire. I'm having trouble avoiding repetition here."

  puts "Please name your allergies one at a time. Type 'done' when completed"
  some_allergies = gets.chomp
    while some_allergies != "done"
      puts "what other allergies?"
      some_allergies = gets.chomp
      if some_allergies == "sunshine"
        puts "Probably a vampire"
        break
      end
    end

apps_to_process -= 1
end






