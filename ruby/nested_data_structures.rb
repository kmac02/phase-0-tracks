=begin

design and build a nested data structure to represent a real-world construct. You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.

Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.

=end

av_stuff {
  equipment: [
    "U-Matic deck", "VHS deck", "monitors", "scopes", "computers"
    ],
  office_supplies: [
    "desk", "chair", "lamp", "flashlight", "pen holder"
  ]
  tape_collection_formats: {
    interviews: {
      VHS: 20, Hi8: 43
    }
    video_art: {
        UMatic: 32, Betacam: 98
    }
    art_collective:{
        VHS: 56, Hi8: 76, UMatic: 49
    }
  }
}

