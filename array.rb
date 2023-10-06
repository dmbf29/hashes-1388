# students =      [ "Mario", "Asha", "Kimi", "Chris" ]
# student_ages =  [ 20,        21,       22,   23    ]

# students.each_with_index do |student, index|
#   puts "#{student} is #{student_ages[index]} years old"
# end

students_age = {
  "Mario Last Name" => 20,
  "Asha" => 25,
  "Kimi" => 22,
  "Chris" => 22
}

k_names = students_age.count do |name, age|
  name.start_with?('K')
end
p k_names


# p students_age['Mario']['age']
# p students_age[0][1]



# CRUD
# Create
# hash[key] = value
students_age['Scott'] = 26


# Read
# hash[key]
students_age['Mario']
students_age.count
students_age.keys
students_age.values
students_age.key?('Rina')
students_age.value?('Mario')

# Update
# hash[key] = value
students_age['Scott'] = 27

# Delete
# hash.delete(key)
students_age.delete('Scott')




students = [ "Mario", "Asha", "Kimi", "Chris" ]
# CRUD

# Create
students << 'julien'
# students.push('julien')

# Read
students[0]

# Update
students[0] = 'Michael'

# Delete
students.delete('Michael')
students.delete_at(0)
