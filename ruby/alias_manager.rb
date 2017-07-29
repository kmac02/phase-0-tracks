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

    vowels = "aeiou"
    consonants = "bcdfghjklmnpqrstvwxyz"
    consonants_index = ""
    index = 0

    # Begin iteration with the array_name
    array_name.map! do |letter|

      # how to keep a space as a space
      if letter == " "
        letter = " "
      #replace consonant with the next consonant;
      # 2017/07/28, 11:30pm: this  still doesn't do anything.
      elsif letter.match(consonants) # /[bcdfghjklmnpqrstvwxyz]/
        consonants_index = letter.index
        letter = consonants_index

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
    p new_spy_name = array_name.join('')
    puts "rstrip removes whitespace on end"
    p new_spy_name.rstrip
    puts "Enter another name or type quit"
    name_submission = gets.chomp
  end
end

