#create data structure to store fake names
identities = { }

# Create name variable with user input.
puts "Enter name."
name_submission = gets.chomp

while name_submission != "quit"

  if name_submission

    full_name = name_submission.split(' ')

    full_name.class
    #full_name.map {|x| puts x }
    # Swap first and last name
    swap_name = ""
    full_name.reverse_each { |name| swap_name += "#{name} " }
    swap_name
    #swap_name = "Loy Myrna"


    #convert string to new array
    array_name = swap_name.split('')

    # Begin iteration with the array_name
    array_name.map! do |letter|

      # how to keep a space as a space
      if letter == " "
        letter = " "

=begin  ### Attempt at cycling through consonants
      #replace consonant with the next consonant;
      elsif letter =~ /[bcdfghjklmnpqrstvwxyz]/
        consonants = "bcdfghjklmnpqrstvwxyz"
        consonant_index = ""
        index = 0
        new_letter = ""
          # access index of consonants
          while index < letter.length
            consonant_index = consonants.index(letter[index])
              if consonant_index == 21
                p new_index = 0
              else
                p new_index = consonant_index += 1
              end
            p new_letter += consonants[new_index] #new_letter = new_letter + alphabet[new_index]
            p index += 1
          end
        new_letter #return
=end
      elsif letter == "z"
        letter = "b"
      # begin vowel 'elsif's.
      # is there a better way using /[aeiou]/?
      elsif letter == "a"
        letter = "e"
      elsif letter == "e"
        letter = "i"
      elsif letter == "i"
        letter = "o"
      elsif letter == "o"
        letter = "u"
      elsif letter == "u"
        letter = "a"
      elsif letter == "A"
        letter = "E"
      elsif letter == "E"
        letter = "I"
      elsif letter == "I"
        letter = "O"
      elsif letter == "O"
        letter = "U"
      elsif letter == "U"
        letter = "A"
      else
        new_letter = letter.next
      end
    end
    # "After map:"
    array_name
    # "joins array into string:"
    almost_spy_name = array_name.join('')
    # "rstrip removes whitespace on end"
    new_spy_name = almost_spy_name.rstrip
    p new_spy_name

    puts "Enter another name or type quit"
    name_submission = gets.chomp
  end
  # return original full name to a string, make a new string
  old_name = full_name * ' '
  # store each identity in identities hash
  identities.store(old_name, new_spy_name)
end

# print spy names and real names
identities.each { |key, value| puts "#{key} is also known as #{value}"}



