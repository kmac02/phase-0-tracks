# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
# get '/' do
#   person = params[:person]
#   "#{person} is a programmer, and #{person} is learning Sinatra."
# end

# get '/:person_1/loves/:person_2' do
#   "#{params[:person_1]} loves #{params[:person_2]}"
# end

# # write a GET route that retrieves
# # all student data
# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   response = ""
#   students.each do |student|
#     response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end

# # write a GET route that retrieves
# # a particular student

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end

# # route that displays an address
# get '/contact' do
#   "555 Fifth Ave"
# end

# /great_job route that can take a person's name as a query parameter (not a route parameter)
# and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

# get '/great_job/:name' do
#   name = params[:name]
#   if name
#     "Good job, #{name}!"
#   else
#     "Good job!"
#   end
# end

#A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
# get '/:int01/plus/:int02' do
#   int01 = params[:int01]
#   int02 = params[:int02]
#   int_sum = int02.to_i + int01.to_i
#   int_sum.to_s
# end

# Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute.
get '/students/' do
  student = db.execute("SELECT name FROM students WHERE name LIKE ?", ['K%'])
  student.to_s
end

# WORKS:
 # students = db.execute("SELECT * FROM students")
# students.to_s



#RETURNS AN EMPTY ARRAY TO THE BROWSER
# get '/students/:letter' do
#   letter = params[:letter]
#   student = db.execute("SELECT name FROM students WHERE name LIKE ?", ['[params[:letter]%'])
#   student.to_s
# end