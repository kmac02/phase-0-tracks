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
  attr_accessor
  attr_reader :guess_count
  # create method to insert a word on initialization
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = secret_word.length
    @encrypted_word = ""

  end

  # getter
  def add_word
    p @secret_word
  end

  # method to change letters into array and into underscores
  def array_word
     p @arrayed_word = @secret_word.split("")

  end

=begin
NOTE: Even though encrypt_word returns correctly, the rspec test keeps failing with:
      Failure/Error: expect(game_play.encrypt_word).to eq "new_word".split("").each {|char| char = "_"}

           NoMethodError:
             undefined method `each' for nil:NilClass
           # ./new_game.rb:35:in `encrypt_word'
           # ./game_spec.rb:15:in `block (2 levels) in <top (required)>
I've tried #collect and #map on the array as well, but no dice.
From what I can tell, this method is returning nil no matter what is in the method (unless it's
'return "green"'). But I seem to be calling an array method on a nil class and I can't tell why
=end
  def encrypt_word

    @encrypted_word = "_".split("") * @secret_word.length

  end

=begin

  # create method to guess a letter
  def guess_letter(letter)
    @guess_count -= 1

    #if letter is equal to a character in the arrayed word
    if @arrayed_word.include?("letter") #true

      # match the letter in the array to the index of the encrypted
      p new_index = @arrayed_word.index("letter")
      p @encrypted_word[new_index].replace("letter")

      # replace one of the underscores with the correctly guessed letter

    else
      false
    end

    p @encrypted_word
  end

=end

end

#.each_index {|char| char = "_"}

#puts "Enter a word"

#new_word = gets.chomp
#kill_me = WordGame.new(new_word)

#until @guess_count == new_word.length
 # puts "Guess a letter"
  #letter_guess = gets.chomp
  #kill_me.guess_letter("letter_guess")

#end


#p kill_me.array_word
#p kill_me.encrypt_word
#p kill_me.guess_letter("r")







#define loop so that number of guesses is equal to length of word
#initialize an alphabet?

#use if

#driver code
#input: a letter
#output: true or false


