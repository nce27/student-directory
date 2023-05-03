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
def print_names(names)
# prints the names of each student
  students.each do |name| # replaces `puts students[0] .. puts students[10]`
  puts name
end
def print_footer(names)
# prints the footer, the total number of students
  print "Overall, we have #{names.count} great students"
end