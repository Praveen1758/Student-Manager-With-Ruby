def calculate_grade(marks)
    case marks
    when 85..100 then "A"
    when 60..84 then "B"
    when 35..59 then "C"
    else "F"
    end
end

def get_valid_int (prompt, min = 0, max = Float::INFINITY)
    loop do
        print prompt
        input = gets.chomp
        begin 
            value = Integer(input)
            if value >= min && value <= max
                return value
            else
                puts "Please enter a number between #{min} and #{max}."
            end 
        rescue ArgumentError
            puts "Invalid input. Please enter a valid number."
        end
    end
end

def add_student(students)
    puts "======== Add New Student ========"
    puts "Enter the Name of the Student: "
    name = gets.chomp
    age= get_valid_int("Enter Your Age: ",0,100)
    puts "Enter Your Gender: "
    gender = gets.chomp
    puts "Enter Your Course: "
    course = gets.chomp
    marks = get_valid_int("Enter Your Marks: ",0,100)
    students << {name: name, age: age, gender: gender, course: course, marks: marks}
    puts "\nStudent #{name} added Successfully!"
end

def list_students (students)
    puts "======== Registered Students ========"
    if students.empty?
        puts "No Students Found"
    else
        students.each do |student|
            puts "Name: #{student[:name]}, Age: #{student[:age]}, Gender: #{student[:gender]}, Course: #{student[:course]}, Marks: #{student[:marks]}, Grade: #{student[:grade]}"
        end
    end
end

def find_student(students)

    puts "======== Search Student ========"
    puts "Enter the Name of the Student:"
    name =gets.chomp
    student = students.find { |s| s[:name].downcase == name.downcase}
    if student
        puts "Student Found\n Details of the Student are:"
        puts "Name: #{student[:name]}, Age: #{student[:age]}, Gender: #{student[:gender]}, Course: #{student[:course]}, Marks: #{student[:marks]}"
    else
        puts "Student Not Found"
    end
end

def show_top_student(students)
    puts "\n======== Top Scorer ========"
    if students.empty?
        puts "No Students Found"
    else
        max_marks = students.map { |s| s[:marks] }.max
        toppers = students.select { |s| s[:marks] == max_marks }

        puts "Highest Score: #{max_marks}"
        toppers.each do |topper|
            puts "Name   : #{topper[:name]} | Course: #{topper[:course]}"
        end
    end
end

def show_average (students)
    puts "\n======== Average Score ========"
    if students.empty?
        puts "No Students Found"
    else
        avg = students.sum { |s| s[:marks] } / students.size.to_f
        puts "Average Marks of Students is #{avg.round(2)}"
    end
end

students = []

loop do
    puts "==============================="
    puts "     STUDENT MANAGER CLI       "
    puts "==============================="
    puts "1. Add Student"
    puts "2. List Students"
    puts "3. Find Student"
    puts "4. Show Top Student"
    puts "5. Show Average"
    puts "6. Exit"
    puts "Choose an option:"

    choice = gets.chomp

    case choice
    when "1" then add_student(students)
    when "2" then list_students(students)
    when "3" then find_student(students)
    when "4" then show_top_student(students)
    when "5" then show_average(students)
    when "6" then puts "Thank you for using the Student Manager CLI!"; exit
    else
        puts "Invalid Choice! Please choose a number between 1 and 6."

    end
end

