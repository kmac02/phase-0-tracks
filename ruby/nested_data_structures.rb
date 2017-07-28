=begin

design and build a nested data structure to represent a real-world construct. You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.

Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.

=end

av_stuff = {
  equipment: [
    "U-Matic deck", "VHS deck", "monitors", "scopes", "computers"
  ],
  office_supplies: [
    "desk", "chair", "lamp", "flashlight", "coffee cup"
  ],
  tape_collection_formats: {
    interviews: {
      VHS: 20, Hi8: 43
    },
    video_art: {
        UMatic: 32, Betacam: 98
    },
    art_collective:{
        VHS: 56, Hi8: 76, UMatic: 49
    }
  }
}
# find the index of an item and replace it
p av_stuff[:office_supplies]
p av_stuff[:office_supplies].index("flashlight")
p av_stuff[:office_supplies][3] = "pen light"


# Determine how many of each format is in each collection, part 1
av_stuff[:tape_collection_formats].each {|key| puts key}
puts "*" * 50
# Determine how many of each format is in each collection, part 2: Spell it out!
av_stuff[:tape_collection_formats][:interviews].each_pair {|key, value| puts "In interviews, there are #{value} #{key} tapes."}

av_stuff[:tape_collection_formats][:video_art].each_pair {|key, value| puts "In video art, there are #{value} #{key} tapes."}

av_stuff[:tape_collection_formats][:art_collective].each_pair {|key, value| puts "In art collective, there are #{value} #{key} tapes."}

# Add item to equipment array
p av_stuff[:equipment] << "Betacam deck"

#p av_stuff[:tape_collection_formats][:video_art][:Betacam].key(97).equal? Betacam

# list new supplies and add to office supplies array
p new_supplies = ["hydraulic stool", "colorful highlighters", "soldering iron"]
p av_stuff[:office_supplies].equal? (new_supplies)
p av_stuff[:office_supplies].push(*new_supplies) #add * in order to add each new supply item as a separate item, or it just appends the entire new_supplies array as an array in the old array.

# add new key and value (tape format and number of tapes) to :interviews
new_interview_tapes = {MiniDV: 33}
av_stuff[:tape_collection_formats][:interviews].merge!(new_interview_tapes)
p av_stuff[:tape_collection_formats][:interviews]


