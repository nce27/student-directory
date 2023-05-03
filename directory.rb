# creates an hash of the students
# specifies their name and the cohort they belong to
# cohort month stored as a symbol

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = [] #empty array created

  name = gets.chomp

  while !name.empty? do
    # while the name isn't empty add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
# prints the header
  puts "THE STUDENTS OF VILLAINS ACADEMY"
  puts "--------------------------------"
end

def print(students) # parameter passed because ...
  # this def has no access to the local variable defined outside of it
# prints the names of each student

  ## challenge 1. prints each student with a number before the name of each student
  #students.each_with_index do |student, index|
    #puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 

  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
    #references the data in the students hash using its keys (name:) & (cohort:)
  end
end

=begin
def print_filtered(students, letter)
  ## challenge 2. prints each student that begins with the name the user has specified
  students.each_with_index do |student, index|
    if student[:name][0].downcase == letter.downcase
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

puts "Please enter a letter to filter by:"
letter = gets.chomp
print_filtered(students, letter)

=end

def print_short_names(students)
  ## challenge 3. Modify your program to only print the students whose name is shorter than 12 characters
  students.each_with_index do |student, index|
    if student[:name].length < 12
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footertwo(students)
  puts "Here is a list of students who have less than 12 characters in their name."
end

def print_footer(students)
# prints the footer, the total number of students
  puts "Overall, we have #{students.count} great students"
end
# list of methods which must be called in order for program to run
students = input_students
print_header
print(students)
print_footer(students)
print_short_names(students)
print_footertwo(students)

=begin
[
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Jeoffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end