=begin
Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

- One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
- Guesses are limited, and the number of guesses available is related to the length of the word.
- Repeated guesses do not count against the user.
- The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
- The user should get a congratulatory message if they win, and a taunting message if they lose.
=end

# create class
# initialize the secret word

class WordGame
  #attr_accessor :secret_word
  # create method to insert a word on initialization
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = secret_word.length
  end

  # getter
  def add_word
    @secret_word
  end

  # method to change letters into array and into underscores
  def encrypt_word
    @secret_word = @secret_word.split(" ")

  end

  # create method to guess a letter
  #def guess_letter(letter)
   # @guess_count -= 1
  #end


end

#until guess_count == secret_word.length




#define loop so that number of guesses is equal to length of word
#initialize an alphabet?

#use if

#driver code
#input: a letter
#output: true or false


## TRASH CAN

#to substitute all characters in a string into underscores
#     = @secret_word.gsub(/./) {|letter| letter = '_'}