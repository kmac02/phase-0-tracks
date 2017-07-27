#Declare keys (with empty values) in questionnaire
questionnaire = {
  name: "",
  age: "", #integer
  family_size: "", #integer
  children_under_10: "", #boolean
  decor_theme: "",
  number_of_rooms: "", #integer
  need_new_walls: "", #boolean
  has_pets: "", #boolean
  number_of_pets: "" #integer
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
questionnaire[:children_under_10] = kids_under_ten == "yes" || kids_under_ten == "y"
# factoring here makes this boolean (i.e. *when* kids under ten is equal to yes, questionnaire[:children_under_10] is true.)

puts "What decor theme?"
decor = gets.chomp
questionnaire[:decor_theme] = decor

puts "How many rooms?"
room_number = gets.chomp
questionnaire[:number_of_rooms] = room_number.to_i

puts "Does the client need new walls?"
needs_walls = gets.chomp
questionnaire[:need_new_walls] = needs_walls == "yes" || needs_walls == "y"

puts "Does the client have pets?"
pets = gets.chomp
  if questionnaire[:has_pets] = pets == "yes" || pets == "y"
    puts "How many?"
    pet_number = gets.chomp
    questionnaire[:number_of_pets] = pet_number.to_i
  else
    questionnaire[:has_pets] = false
    questionnaire[:number_of_pets] = nil
  end


# print out the client info
questionnaire.each { |key, value| puts "Client info: #{key}: #{value}"}

p questionnaire

puts "Enter the key to make any updates or enter none if complete."
update_answer = gets.chomp
# Separate booleans, integers, and strings
  if update_answer == "none"
    #does nothing
  #### edit integer
  elsif update_answer == "age" || update_answer == "family_size" || update_answer == "number_of_rooms" || update_answer == "number_of_pets"
    key_to_update = update_answer.to_sym
    puts "Enter new value:"
    questionnaire[key_to_update] = gets.chomp.to_i
  ##### edit boolean
  elsif update_answer == "children_under_10" || update_answer == "need_new_walls" || update_answer == "has_pets"
    key_to_update = update_answer.to_sym
    puts "Enter new value:"
    new_value = gets.chomp
    questionnaire[key_to_update] = new_value
    questionnaire[key_to_update] = new_value == "yes" || pets == "y"
  ##### edit string
  else
    # to_sym to make string a symbol
    key_to_update = update_answer.to_sym
    puts "Enter new value:"
    questionnaire[key_to_update] = gets.chomp
  end

p questionnaire