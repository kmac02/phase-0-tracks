#create data structure to store fake names
identities = { }

# Create name variable with user input.
puts "Enter name."
name_submission = gets.chomp

while name_submission != "quit"

  if name_submission

    p full_name = name_submission.split(' ')

    p full_name.class
    full_name.map {|x| puts x }
    # Swap first and last name
    swap_name = ""
    p full_name.reverse_each { |name| swap_name += "#{name} " }
    p swap_name
    #swap_name = "Loy Myrna"
    puts "*" * 50

    #convert string to new array
    array_name = swap_name.split('')

    # Begin iteration with the array_name
    array_name.map! do |letter|

      # how to keep a space as a space
      if letter == " "
        letter = " "

=begin  ### Attempt at addressing consonants
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
      # if first letter is capital vowel, need it to go to next
      # capital vowel. 5 more elsifs with capital vowels?
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
      else
        new_letter = letter.next
      end
    end
    puts "After map:"
    p array_name
    puts "joins array into string:"
    p almost_spy_name = array_name.join('')
    puts "rstrip removes whitespace on end"
    p new_spy_name = almost_spy_name.rstrip
    p new_spy_name

# Add section to store spy name in data structure
# add new hash

    puts "Enter another name or type quit"
    name_submission = gets.chomp
  end
  p old_name = full_name * ' '
  identities.store(old_name, new_spy_name)
end

identities.each { |key, value| puts "#{key} is also known as #{value}"}
# print spy names and real names
# p some has they are stored in
# {|key, value| puts "#{key} is also known as #{value}"}

