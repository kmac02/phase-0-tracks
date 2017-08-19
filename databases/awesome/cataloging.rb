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
    creator_id INTEGER,
    media_type_id INTEGER,
    year_released INTEGER,
    does_own BOOLEAN,
    description TEXT,
    review TEXT,
    FOREIGN KEY (creator_id) REFERENCES creators(id),
    FOREIGN KEY (media_type_id) REFERENCES media(id)
  )
SQL

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

# method to add all info to item table
def add_new_item(db, title, creator_id, year_released, does_own, description, review)
  db.execute("INSERT INTO items (title, creator_id, media_type_id, year_released, does_own, description, review) VALUES (?, ?, ?, ?, ?, ?, ?)", [title, creator_id, @media_type_id, year_released, does_own, description, review])
end

#method to select media type
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
  media_option = gets.chomp.to_i
  @media_type_id = media_option
    # if media_option == 1
    #   @media_type_id = 1
    # elsif media_option == 2
    #   @media_type_id = 2
    # elsif media_option == 3
    #   @media_type_id = 3
    # elsif media_option == 4
    #   @media_type_id = 4
    # elsif media_option == 5
    #   @media_type_id = 5
    # elsif media_option == 6
    #   @media_type_id = 6
    # elsif media_option == 7
    #   @media_type_id = 7
    # elsif media_option == 8
    #   @media_type_id = 8
    # else
    #   puts "Please select a number. "
    # end
end

# method add title




# add to insert info method: does item already exist?

# add search method? User interface in separate .rb file?: Search, Add, Update, Delete

### DRIVER CODE FOR TESTING
#add_new_item(db, "Ties of Power", 1, 1, 1999, "true", "Sequel to A Thousand Words for Stranger", "still reading")

##### USER INTERFACE
# What would you like to do? (Add, Update, Search, Delete)
## ADD
media_select