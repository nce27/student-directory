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
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
    #references the data in the students hash using its keys (name:) & (cohort:)
  end
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