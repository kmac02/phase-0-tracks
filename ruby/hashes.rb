#Declare keys (with empty values) in questionnaire
questionnaire = {
  name: "",
  age: "",
  family_size: "", #integer
  children_under_10: "", #boolean
  decor_theme: "",
  number_of_rooms: "", #integer
  need_new_walls: "", #boolean
  has_pets: "", #boolean
  number_of_pets: ""
}

#Ask user to begin filling out questionnaire
puts "Please begin entering client information."

# Create prompt for each key, apply the new value to the key
puts "Client's name:"
name = gets.chomp
questionnaire[:name] = name

puts "Client's age:"
age = gets.chomp
questionnaire[:age] = age.to_i

puts "How many people in the family?"
family_size = gets.chomp
questionnaire[:family_size] = family_size.to_i

puts "Does the client have children under the age of 10?"
kids_under_ten = gets.chomp
  if kids_under_ten == "yes" || kids_under_ten == "y"
    questionnaire[:children_under_10] = true
  else
    questionnaire[:children_under_10] = false
  end

puts "What decor theme?"
decor = gets.chomp
questionnaire[:decor_theme] = decor

puts "How many rooms?"
room_number = gets.chomp
questionnaire[:number_of_rooms] = room_number.to_i

puts "Does the client need new walls?"
needs_walls = gets.chomp
  if needs_walls == "yes" || needs_walls == "y"
    questionnaire[:need_new_walls] = true
  else
    questionnaire[:need_new_walls] = false
  end

puts "Does the client have pets?"
pets = gets.chomp
  if pets == "yes" || pets == "y"
    questionnaire[:has_pets] = true
    puts "How many?"
    pet_number = gets.chomp
    questionnaire[:number_of_pets] = pet_number.to_i
  else
    questionnaire[:has_pets] = false
    questionnaire[:number_of_pets] = nil
  end


# print out the client info
questionnaire.each { |key, value| puts "Client info: #{key}: #{value}"}

puts "Enter the key to make any updates or enter none if complete."
update_answer = gets.chomp
if update_answer == "none"
# to_sym to make string a symbol
else
  key_to_update = update_answer.to_sym
  puts "Enter new value:"
  questionnaire[key_to_update] = gets.chomp
end



p questionnaire