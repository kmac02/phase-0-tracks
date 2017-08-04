# "a module declaration with some methods declared on the self keyword inside the declaration.""

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

# Driver Code
p Shout.yell_angrily("AARGGGH")
p Shout.yelling_happily("Huzzah")