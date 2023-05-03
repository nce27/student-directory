# creates an array of the students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Jeoffrey Baratheon",
  "Norman Bates"
]
def print_header
# prints the header
  puts "THE STUDENTS OF VILLAINS ACADEMY"
  puts "--------------------------------"
end

def print(names) #name parameter passed
  # this def has no access to the local variable defined outside of it
# prints the names of each student
  names.each do |name|
    puts name
  end
end

def print_footer(names)
# prints the footer, the total number of students
  puts "Overall, we have #{names.count} great students"
end
print_header
print(students)
print_footer(students)