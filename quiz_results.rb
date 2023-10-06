# Q1 - What’s a variable? What’s the point of using variables? Give an example.
# A variable is a name which stores data.
# The point of using variables is to be able to reuse and manipulate data.
first_name = 'Sebastien'

# Q2 - Precisely describe the following line of code using the correct vocabulary.
age = 18
# age is the variable storing the value of 18 (integer)

# Q3 - What’s a method? What’s the point of defining methods?
# a resuable block of code that returns a dynamic value


# Q4 - Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # defining a method called multiply. 2 parameters x and y
  return x * y     # return the multiplication
end                # end....

# puts multiply(5, 8) # calling the method. passing 2 arguments 5 and 8. displaying the result

# Q5 - What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.
# if is... conditional statement
# TODO: write some code with `if`
age = 18
if age >= 18
  true
else
  false
end

# puts 'Cheers!' if age >= 20
# puts "....."

# Q6 - Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
sum = 0.0
grades.each do |grade|
  sum += grade
end
average = sum / grades.length

# Q7 - Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  # interpolation -> we have to use double quotes
  return "#{first_name.capitalize} #{last_name.capitalize}"

  # concatenation
  first_name.capitalize + " " + last_name.capitalize
end



# Q8 - What’s the difference between concatenation and interpolation? Give an example.



# CRUD Array
# Q9 - Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
# puts fruits[1]

# Add an "apple" to the fruits array
# fruits.push('apple')
fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange"
fruits.delete_at(-1)
fruits.delete('orange')

# Q10 - Translate each line of pseudo-code into ruby. (HASH Crud)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
# puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = 'Eiffel Tower'

# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor] # nil



# Q11 - Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?
# they are symbols

# Code example given to the student:
students = [ [ "john", 28, '123 street' ], [ "mary", 25, '123 street' ], [ "paul", 21, '123 street' ] ]
# TODO: Convert the array of arrays into an array of hashes.
new_students = students.map do |student|
  {
    name: student.first,
    age: student.last
  }
end

# new_students = students.map do |student|
#   student_hash = {}
#   student_hash[:name] = student.first
#   student_hash[:age] = student.last
#   student_hash
# end

new_students = students.map do |name, age, address|
  {
    name: name,
    age: age,
    address: address
  }
end

p new_students
