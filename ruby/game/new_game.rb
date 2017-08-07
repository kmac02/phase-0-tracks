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
  attr_accessor :secret_word, :encrypted_word, :arrayed_word
  attr_reader :guess_count


  # create method to insert a word on initialization
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = secret_word.length
    @encrypted_word = []
    @arrayed_word = []

  end

  # getter
  def add_word
    p @secret_word
  end

  # method to change letters into array
  def array_word
     p @arrayed_word = @secret_word.split("")
  end

  # method to create an array of underscores equal to length of secret word
  def encrypt_word
    @encrypted_word = "_".split("") * @secret_word.length
  end

  def use_encrypted_word
    @encrypted_word
  end


  # create method to guess a letter
  def guess_letter(letter)
    @guess_count -= 1


    #if letter is equal to a character in the arrayed word
    if @secret_word.include?(letter) #true

      # match the letter in the array to the index of the encrypted
      # replace one of the underscores with the correctly guessed letter
      p new_index = @secret_word.index(letter) #returns correct index
      @encrypted_word[new_index].replace(letter)
      ####why is encrypted_word nil? tried to initialize encrypted_word and arrayed_word as arrays
      # but this still makes a no method error for nil class (since nil doesn't have an index).

      # return encrypted word with guessed letter replacing the underscore
      # need to loop through so each guess will be stored.

    else
      false
    end

  end



end

=begin
#.each_index {|char| char = "_"}

#puts "Enter a word"

#new_word = gets.chomp
#wordgame = WordGame.new(new_word)

#until @guess_count == new_word.length
 # puts "Guess a letter"
  #letter_guess = gets.chomp
  #wordgame.guess_letter(letter_guess)

#end


#p wordgame.array_word
#p wordgame.encrypt_word
#p wordgame.guess_letter("r")

=end





#define loop so that number of guesses is equal to length of word
#initialize an alphabet?

#use if

#driver code
#input: a letter
#output: true or false


