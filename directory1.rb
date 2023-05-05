
@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def interactive_menu
  loop do
      print_menu
      process(gets.chomp)
    end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list#(students)
  print_footer#(students)
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
    #print_header
    #print_students_list(students)
    #print_footer(students)
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header
# prints the header
  puts "THE STUDENTS OF VILLAINS ACADEMY"
  puts "--------------------------------"
end

def print_students_list#(students) 
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" 
    #references the data in the students hash using its keys (name:) & (cohort:)
  end
end

def print_footer#(students)
# prints the footer, the total number of students
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student| # iterates over each element in the @students array
    student_data = [student[:name], student[:cohort]] # converts all elements of the hash into a string to write to the file
    csv_line = student_data.join(",")
    file.puts csv_line # calling puts on a file writes to that file
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r") # 'r'eading the lines into an array
  file.readlines.each do |line| # iterates for each student
    name,cohort = line.chomp.split(",") # parallel assignment, split with commas
    @students << {name: name, cohort: cohort.to_sym} # creates a new hash 
    # with cohort converted from a string and stored as a symbol
  end
  file.close
end


# list of methods which must be called in order for program to run
interactive_menu

#students = input_students
#print_header
#print(students)
#print_footer(students)