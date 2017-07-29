=begin
In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

#Swap first and last name
# Create name variable. Turn into array


p full_name = "Myrna Loy".split(' ')

p full_name.class
full_name.map {|x| puts x }
# Swap first and last name
swap_name = ""
p full_name.reverse_each { |name| swap_name += "#{name} " }
p swap_name
#swap_name = "Loy Myrna"
puts "*" * 50

#letters = swap_name.split('')
#letters.map! { |letter| letter.next }
#letters
#new_name = letters.join('')
#p new_name

#convert string to array
array_name = swap_name.split('')
vowels = "aeiou"

array_name.map! do |letter|
  new_letter = letter.next
  if new_letter == "!"
    new_letter = " "

  end
end
puts "After map:"
p array_name

