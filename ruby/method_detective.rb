# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#*****************************

p "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

p "zom".gsub(/([aeiou])/, 'o' =>'oo')
p "zom".insert(2, 'o')
# => “zoom”

p "enhance".center(20, padstr=' ')
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual" << " suspects"
#=> "the usual suspects"

p " suspects".prepend "the usual"
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

p "z".sub(/./) { |s| s.ord.to_s }
# p "z".codepoints.to_s
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4