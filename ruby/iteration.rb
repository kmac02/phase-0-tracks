def apology
  puts "I'm sorry!"
  yield("Bill", "Ted")
end

apology { |name1, name2| puts "I'm super super sorry #{name1} and #{name2}!" }
#

ice_cream_flavor = ["chocolate", "vanilla", "strawberry", "mint"]

puts "Ice Cream Flavor"
p ice_cream_flavor

condiments = {"sprinkles" => "on top", "walnuts" => "mix in", "gummy bears" => "on the bottom"}

puts "Condiments"
p condiments

#

ice_cream_flavor = ["chocolate", "vanilla", "strawberry", "mint"]

puts "Ice Cream Flavor"
p ice_cream_flavor

ice_cream_flavor.each do |flavor|
  puts "I love this #{flavor}"
end

ice_cream_flavor.map! do |flavor|
  puts flavor
  flavor << "-bean"
end

p ice_cream_flavor

condiments = {"sprinkles" => "on top", "walnuts" => "mix in", "gummy bears" => "on the bottom"}

puts "Condiments"
p condiments

condiments.each do |toppings, location|
  puts "#{toppings} are supposed to be #{location}"
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 p numbers.select { |num| num.even? }

 p numbers.reject { |num| num.even? }

 p numbers.take_while { |i| i < 7 }

 p numbers.drop_while { |i| i <= 6 }

 p numbers.bsearch { |i| i >= 5 }

#

letters = {"a" => 10, "b" => 25, "c" => 37, "d" => 40, "e" => 55, "f" => 69}

  p letters.keep_if { |letter, value| value >= 10 }

  p letters.shift
  p letters

  d = "d"
  p letters.key(37).equal? d

  p letters.delete_if { |letter, value| value >= 40}