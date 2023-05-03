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
# prints the students
puts "THE STUDENTS OF VILLAINS ACADEMY"
puts "--------------------------------"
students.each do |student| # replaces `puts students[0] .. puts students[10]`
  puts student
end
# prints total number of students
print "Overall, we have #{students.count} great students"