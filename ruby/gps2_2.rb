# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create empty hash
  # enter items for hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list (items)
  @grocery_list = { }
  items.split(" ").collect { |x| @grocery_list[x] = 0 }
  print_list(@grocery_list)
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# push new key and value into hash
# ex: hashname[:key] = quantity
# output: new key and value added

def add_item (items)
  items.each { |x, quantity| @grocery_list[x] = quantity }
end

# Method to remove an item from the list
# input: existing item and quantity
# steps:
# name the hash
# identity the item to delete
# ex hashname.delete("key")
# output: value deleted

def remove_item (item)
    @grocery_list.delete(item)
end


# Method to update the quantity of an item
# input: item name and new value
# steps:
# ex: hashname[:key] = new_value
# output: shows update

def update_item (item, quantity)
    @grocery_list[item] = quantity
end

# Method to print a list and make it look pretty
# input: input hash
# steps: print hash pretty
# output: hash

def print_list (hash)
  hash.each { |item, quantity| puts "#{item}: #{quantity}"}
end

# DRIVER code
create_list("lemonade tomatoes onions ice_cream")
update_item("lemonade", 2)
update_item("tomatoes", 3)
update_item("onions", 1)
update_item("ice_cream", 4)

remove_item("lemonade")
update_item("ice_cream", 1)

print_list(@grocery_list)

p @grocery_list
