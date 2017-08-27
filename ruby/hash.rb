DoeJane = {
  :name => "Shiner Ram",
  :address => "453 Abita",
  :email => "rawr@aol.com",
  :phone => "555-456-9876",
  fave_blue: "greenish",
  wallpaper_pref: "paisley",
  ombre_is:"so last season" }

  #declare if person was hired
  #greenish isn't a shade of blue. Update.

  DoeJane[:hired] = "yes"
  DoeJane[:fave_blue] = "periwinkle"

  p phone = "some_nums"
  p DoeJane[:phone]
  p DoeJane[:phone].length #12
  p phone.length #9
  # a key is not the same as a variable

  p DoeJane[:name] + DoeJane[:fave_blue]
  #combining by keys does not change the content

  p DoeJane
  p DoeJane.length
  # returned number of key / value pairs

  p DoeJane.any? {|x| }

