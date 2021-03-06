require_relative 'new_game.rb'

describe WordGame do
  let(:game_play) {WordGame.new("newberry")}

  it "stores the new secret word on initialization" do
    expect(game_play.add_word).to eq "newberry"
  end

  it "turns secret word into array of letters" do
    expect(game_play.array_word).to eq "newberry".split("")
  end


  it "encrypts word into underscores" do
    expect(game_play.encrypt_word).to eq ["_", "_", "_", "_", "_", "_", "_", "_"]
  end


  it "compares letter guess to secret word" do
    expect(game_play.guess_letter("n")).to eq ["n", "_", "_", "_", "_", "_", "_", "_"]
  end



end

#it "encrypts the word to underscores" do
   #expect(game_play.encrypt_word).to eq "newberry".gsub(/./) {|letter| letter = '_'}
  #end

  #it "guesses a letter" do
   # expect(game_play.guess_letter).to eq "newberry".length
  #end