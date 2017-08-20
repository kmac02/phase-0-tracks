## ******* Cataloging and Reviewing Media *********
# A database to track and store information and reviews about media: books read, movies watched, and music heard. The media may or may not be owned by the user (for example: a movie that was streamed, or an album that was heard on spotify). A user will enter data about the media and the info will be cataloged in the main table, the media type will be selected from an established table, and creators (authors, artists, directors) will be added to a creators table. Before a person adds something new, they have the option to search the db. When they enter information, the program will search the tables to verify the information they are adding doesn't already exist.
# requirements
require 'sqlite3'

# create database with .new
db = SQLite3::Database.new("catalog.db")
db.results_as_hash = true

# create tables: Catalog, Creators, Media_Type (IF NOT EXIST)
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    creator VARCHAR(255),
    media_type_id INTEGER,
    year_released INTEGER,
    does_own BOOLEAN,
    description VARCHAR(255),
    review VARCHAR(255),

    FOREIGN KEY (media_type_id) REFERENCES media(id)
  )
SQL
# old: FOREIGN KEY (creator_id) REFERENCES creators(id),
create_creators_tbl_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS creators(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_media_tbl_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS media(
    id INTEGER PRIMARY KEY,
    type VARCHAR(255),
    format VARCHAR(255)
  )
SQL
# # commands to create the tables
db.execute(create_table_cmd)
db.execute(create_creators_tbl_cmd)
db.execute(create_media_tbl_cmd)

# if the media table does not include anything, execute this code to create a static table for media types

db.execute(<<-ADDONCE
  SELECT * FROM media;
  IF NOT EXISTS
  (INSERT INTO media (type, format)
    VALUES
    ('book', 'physical'), ('book', 'ebook'), ('music', 'vinyl'), ('music', 'CD'), ('music', 'mp3'), ('movie', 'Blu-Ray'), ('movie', 'DVD'), ('movie', 'streaming')
    )
  ADDONCE
)
#*********************************************

# method to add all info to item table
# def add_new_item(db)
#   db.execute("INSERT INTO items (title, creator_id, media_type_id, year_released, does_own, description, review) VALUES (?, ?, ?, ?, ?, ?, ?)", [@title, creator_id, @media_type_id, @year_released, @does_own, @description, @review])
# end

#method to select media type (assumes correct input)
def media_select
  puts "What type of media would you like to add? Select number.
  1. Book, physical
  2. Book, ebook
  3. Music, vinyl
  4. Music, CD
  5. Music, mp3
  6. Movie, Blu-Ray
  7. Movie, DVD
  8. Movie, streaming"
  selection = gets.chomp.to_i
  @media_type_id = selection
end

# method add title
def add_title
  puts "Title:"
  @title = gets.chomp
end

# method to add creator (adds to creator list, and the id from the creator table is added to the item table)
def add_creator
  if @media_type_id == 1 || @media_type_id == 2
    puts "Author:"
    @creator = gets.chomp
  elsif @media_type_id == 3 || @media_type_id == 4 || @media_type_id == 5
    puts "Artist:"
    @creator = gets.chomp
  elsif @media_type_id == 6 || @media_type_id == 7 || @media_type_id == 8
    puts "Director:"
    @creator = gets.chomp
  end

end

 def insert_creator(db)
  add_creator
  # db.execute("INSERT INTO creators (name) VALUES (?)", [@creator])
  # @creator_id = db.execute("SELECT id FROM creators WHERE name = ?", [@creator])
end

def add_year
  puts "What year was the title released?"
  @year_released = gets.chomp.to_i
end

def add_ownership
  puts "Do you own this title? yes or no."
  answer = gets.chomp
  if answer == "yes"
    @does_own = "true"
  else
    @does_own = "false"
  end
end

def add_description
  puts "Description:"
  @description = gets.chomp
end

def add_review
  puts "Review:"
  @review = gets.chomp
end

# method to add all info to item table
def add_new_item(db)
  media_select
  add_title
  add_creator
  add_year
  add_ownership
  add_description
  add_review
  db.execute("INSERT INTO items (title, creator, media_type_id, year_released, does_own, description, review) VALUES (?, ?, ?, ?, ?, ?, ?)", [@title, @creator, @media_type_id, @year_released, @does_own, @description, @review])
  puts "*" * 50
  puts "You added:
  TITLE: #{@title}
  CREATOR: #{@creator}
  MEDIA TYPE NUMBER: #{@media_type_id}
  YEAR: #{@year_released}
  YOU OWN THIS TITLE: #{@does_own}
  DESCRIPTION: #{@description}
  REVIEW: #{@review}"
end

# Search by method for title, creator, year and what items are owned
def search_method(db)
  puts "How would you like to search?\n1. Title\n2. Creator (includes: author, director, music artist)\n3. Year\n4. Display all items you own\n" # 5. Description
  search_by = gets.chomp.downcase
  if search_by == "title" || search_by == "1"
    puts "Enter title:"
    by_title = gets.chomp
    results = db.execute("SELECT * FROM items WHERE title LIKE ?", [by_title])
  elsif search_by == "creator" || search_by == "2"
    puts "Enter Creator:"
    by_creator = gets.chomp
    results = db.execute("SELECT * FROM items WHERE creator LIKE ?", [by_creator])
  elsif search_by == "year" || search_by == "3"
    puts "Enter year:"
    by_year = gets.chomp.to_i
    results = db.execute("SELECT * FROM items WHERE year_released = ?", [by_year.to_i])
  elsif search_by == "ownership" || search_by == "4"
    results = db.execute("SELECT * FROM items WHERE does_own = ?", ["true"])
  # elsif search_by == "description" || search_by == "5"
  #   puts "Search for:"
  #   search_term = gets.chomp
  #   p results = db.execute("SELECT * FROM items WHERE description LIKE ?", "%[#{search_term}]%")
  end #if end
    puts "Search Results: "
    results.each do |result|
      puts "#{result['title']} by #{result['creator']} is id number #{result['id']}. Owned by you? #{result['does_own']}"
    end #iteration end
end #search method end

def print_full_list(db)
  full_list = db.execute("SELECT * FROM items")
      puts "Results:"
      full_list.each do |item|
        #media_format = db.execute("SELECT media.id FROM media JOIN items ON media.id = items.media_type_id")
        result =  "#{item['id']}: #{item['title']} by #{item['creator']}, released in #{item['year_released']}. Media ID: #{item['media_type_id']}, Owned by you? #{item['does_own']}, Description: #{item['description']}, Review: #{item['review']}"
        puts result
        puts #empty line
      end
end

# method to display item by ID number within other methods
def display_item(db)
  @to_edit = db.execute("SELECT * FROM items WHERE ID = ?", [@select_id])
        @to_edit.each do |item|
          puts "#{item['id']}: #{item['title']} by #{item['creator']}, released in #{item['year_released']}. Media ID: #{item['media_type_id']}, Owned by you? #{item['does_own']}, Description: #{item['description']}. Review: #{item['review']}."
        end
end

def update_method(db)
    puts "Select which ID you would like to update. To view the full list, type 'list'."
    @select_id = gets.chomp
    if @select_id == "list"
      print_full_list(db)
    elsif @select_id.to_i.is_a? Integer
      puts "Selection:"
      display_item(db)
      puts "What would you like to edit?
      1. Title
      2. Creator
      3. Year
      4. Description
      5. Review
      6. Own it?"
      select_edit = gets.chomp.downcase
      puts "Change to:"
      if select_edit == "title" || select_edit == "1"
        new_title = gets.chomp
        db.execute("UPDATE items SET title = ? WHERE id = ?", [new_title, @select_id])
        puts "Updated:"
        display_item(db)
      elsif select_edit == "creator" || select_edit == "2"
        new_creator = gets.chomp
        db.execute("UPDATE items SET creator = ? WHERE id = ?", [new_creator, @select_id])
        puts "Updated:"
        display_item(db)
      elsif select_edit == "year" || select_edit == "3"
        new_year = gets.chomp.to_i
        db.execute("UPDATE items SET year_released = ? WHERE id = ?", [new_year, @select_id])
        puts "Updated:"
        display_item(db)
      elsif select_edit == "description" || select_edit == "4"
        new_description = gets.chomp
        db.execute("UPDATE items SET description = ? WHERE id = ?", [new_description, @select_id])
        puts "Updated:"
        display_item(db)
      elsif select_edit == "review" || select_edit == "5"
        new_review = gets.chomp
        db.execute("UPDATE items SET review = ? WHERE id = ?", [new_review, @select_id])
        puts "Updated:"
        display_item(db)
      elsif select_edit == "own it?" || select_edit == "6"
        puts "Do you own this title? Type 'yes' or 'no'"
        answer = gets.chomp
        if answer == "yes"
          answer = "true"
        elsif answer == "no"
          answer = "false"
        end
        db.execute("UPDATE items SET does_own = ? WHERE id = ?", [answer, @select_id])
        puts "Updated:"
        display_item(db)
      end
    end # if end
end #update end

def delete_method(db)
  puts "Select which catalog number you would like to delete. To view the full list, type 'list'."
    @select_id = gets.chomp
    if @select_id == "list"
      print_full_list(db)
    end
    puts "Select catalog number:"
    @select_id = gets.chomp
    if @select_id.to_i.is_a? Integer
      display_item(db)
      puts "Are you sure you want to delete #{@select_id}? Type 'yes' to confirm or 'no' to cancel."
      confirm = gets.chomp
      # while confirm != "yes" || confirm != "no"
      #   puts "Please type 'yes' to confirm or 'no' to cancel"
      #   confirm = gets.chomp
      # end #until end
      if confirm == "yes"
        db.execute("DELETE FROM items WHERE id = ?", [@select_id])
      puts "The content for catalog number #{@select_id} has been deleted."
      end
    end # if select id end
end

def view_catalog_options(db)
  puts "How would you like to view?\n1. By catalog number (lowest to highest)\n2. Alphabetical by Title (A-Z)\n3. Alphabetical by Creator(by first name)\n4. By Year (Oldest to Newest)"
  view_by = gets.chomp
  if view_by == "1"
    print_full_list(db)
    output = false
  elsif view_by == "2"
    output = db.execute("SELECT * FROM items ORDER BY title ASC")
  elsif view_by == "3"
    output = db.execute("SELECT * FROM items ORDER BY creator ASC")
  elsif view_by == "4"
    output = db.execute("SELECT * FROM items ORDER BY year_released ASC")
  end
  puts
  if output
    puts "Results:"
    output.each do |item|
      result =  "#{item['id']}: #{item['title']} by #{item['creator']}, released in #{item['year_released']}. Media ID: #{item['media_type_id']}, Owned by you? #{item['does_own']}, Description: #{item['description']}, Review: #{item['review']}"
      puts result
      puts #empty line
    end
  end # output do end

end


# + db.execute("SELECT * FROM media WHERE id = items.media_type_id") +
#JOIN media ON items.media_type_id = media.id"

# add to insert info method: does item already exist?

# add search method? User interface in separate .rb file?: Search, Add, Update, Delete

### DRIVER CODE FOR TESTING


##### USER INTERFACE
puts "\nWelcome to your media catalog!\nWhat would you like to do?\n"
selection = ''
until selection == "exit" || selection == "6"
puts "\n**********************\nOptions:
1. Add
2. Search
3. Update
4. Delete
5. View Catalog List
6. Exit
**********************"
  puts "Select:"
  selection = gets.chomp.downcase
  if selection == "add" || selection == "1"
    add_new_item(db)
  elsif selection == "search" || selection == "2"
    search_method(db)
  elsif selection == "update" || selection == "3"
    update_method(db)
  elsif selection == "delete" || selection == "4"
    delete_method(db)
  elsif selection == "view catalog list" || selection == "5"
    view_catalog_options(db)   ## view by alpha by title, creator or by year descending
  end

end


### HOLDING BIN
