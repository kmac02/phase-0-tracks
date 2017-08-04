=begin
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
=end

module Shout
  def frantic_search(name)
    "Oh no! Where is " + name + "!?!?!"
  end
end

class Parent
  include Shout
end

class Camp_counselor
  include Shout
end

# driver code

parent = Parent.new
p parent.frantic_search("Timmy")

camp_counselor = Camp_counselor.new
p camp_counselor.frantic_search("Bobby")

# refactored versions
p parent = Parent.new.frantic_search("Joanie")
p camp_counselor = Camp_counselor.new.frantic_search("Donnie")


