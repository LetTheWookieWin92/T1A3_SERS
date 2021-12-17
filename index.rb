# Ruby gems
require 'json'
require 'colorize'


require_relative './methods.rb'
require_relative './validation.rb'

# Initialise the user input variable and clear terminal
system 'clear'
displayMode = "Home" 

# Different menus have different numbers of options, this hash provides a means to look up how many options there are (DRY-er than keeping track of it throughout the script)
availableOptions = { "Home" => 2,  "Program Selection - Class Lists" => 5 , "Program classes" => 1, "Program Selection - Student Search" => 5, "Program students" => 1}

# Program options in array, where they can be referenced throughout
programs = ["Psychology", "Science", "Engineering", "Business"]

# Initialises user input
input = ""

# Overall program loop; application will continue to operate until user types exit
while input != "exit"
    
    # Check display mode
    case displayMode
        when "Home"
            # Check input
            case input
                # Input was not a valid option
                when 0 
                    system 'clear'
                    # Prints the welcome message
                    puts "Welcome to the Student Enrolment System" + " (" + "SERS".colorize(:green) + ")"
                    puts "This application allows you to view and amend the enrolment status of any student at the institution, as well as the current occupancy of any available classes."
                    puts
                    puts "What would you like to do? Use your numerical keys to select an option"
                    puts
                    puts "[1] Search for students"
                    puts "[2] View the class lists"
                    puts
                    puts "Invalid option. Please enter one of the numerical options above"

                # Student search option
                when 1
                    system 'clear'
                    input = ""
                    displayMode = "Program Selection - Student Search"

                    puts "SERS".colorize(:green) + " > Student Search"
                    puts "Please select a program to display its students"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts

                # Class list option
                when 2
                    system 'clear'
                    input = ""
                    displayMode = "Program Selection - Class Lists"

                    puts "SERS".colorize(:green) + " > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts

                # Default 
                else
                    system 'clear'
                    # Prints the welcome message
                    puts "Welcome to the Student Enrolment System" + " (" + "SERS".colorize(:green) + ")"
                    puts "This application allows you to view and amend the enrolment status of any student at the institution, as well as the current occupancy of any available classes."
                    puts
                    puts "What would you like to do? Use your numerical keys to select an option"
                    puts
                    puts "[1] Search for students"
                    puts "[2] View the class lists"
                    puts
            end
        when "Program Selection - Class Lists"
            # Check input
            case input
                # Input was not a valid option
                when 0 
                    system 'clear'

                    puts "SERS".colorize(:green) + " > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts
                    puts "Invalid option. Please enter one of the numerical options above"                    
                # If user selects any of the four option of program
                when 1..4
                    system 'clear'
                    
                    puts "SERS".colorize(:green) + " > Class lists > #{programs[input-1]}"
                    puts "The following #{programs[input-1]} classes are available:"
                    puts  

                    # Get all classes for the specified program
                    classes = getClasses(programs[input-1])
                    
                    # List each unit's code, name and occupant count
                    optionNumber = 1
                    classes.each do |classItem| 
                        puts classItem["code"] + " " + classItem["name"] + " (Occupants: " + classItem["occupants"].count.to_s + "/20)"
                        optionNumber = optionNumber + 1
                    end

                    puts
                    puts  "Press any key to go back"
                    puts

                    
                    availableOptions["Program classes"] = classes.count+1
                    displayMode = "Program classes"

                # Go back
                when 5
                    system 'clear'
                    input = ""
                    displayMode = "Home"

                    puts "Welcome to the Student Enrolment System" + " (" + "SERS".colorize(:green) + ")"
                    puts "This application allows you to view and amend the enrolment status of any student at the institution, as well as the current occupancy of any available classes."
                    puts
                    puts "What would you like to do? Use your numerical keys to select an option"
                    puts
                    puts "[1] Search for students"
                    puts "[2] View the class lists"
                    puts

                # Default 
                else
                    system 'clear'

                    puts "SERS".colorize(:green) + " > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts
            end
        when "Program classes"

            system 'clear'
            input = ""
            displayMode = "Program Selection - Class Lists"

            puts "SERS".colorize(:green) + " > Class lists"
            puts "Please select a program to display available classes"
            puts
            puts "[1] #{programs[0]}"
            puts "[2] #{programs[1]}"
            puts "[3] #{programs[2]}"
            puts "[4] #{programs[3]}"
            puts "[5] Go back"
            puts
        when "Program Selection - Student Search"
             # Check input
             case input
                # Input was not a valid option
                when 0 
                    system 'clear'
                    input = ""
                    displayMode = "Program Selection - Student Search"

                    puts "SERS".colorize(:green) + " > Student Search"
                    puts "Please select a program to display its students"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts
                    puts "Invalid option. Please enter one of the numerical options above"                    
                # If user selects any of the four option of program
                when 1..4
                    system 'clear'
                    
                    puts "SERS".colorize(:green) + " > Student Search > #{programs[input-1]}"
                    puts "The following students study #{programs[input-1]}:"
                    puts
                    
                    # Get all students for the specified program
                    students = getStudents(programs[input-1])
                    
                    # List each student's SID, name and enrolled units
                    optionNumber = 1
                    students.each do |student| 
                        puts student["SID"] + " " + student["name"] + " (Enrolled in: " + student["enrolment"].count.to_s + "/4 units)"
                        optionNumber = optionNumber + 1
                    end

                    puts
                    puts  "Press any key to go back"
                    puts

                    
                    availableOptions["Program students"] = students.count+1
                    displayMode = "Program students"

                # Go back
                when 5
                    system 'clear'
                    input = ""
                    displayMode = "Home"

                    puts "Welcome to the Student Enrolment System" + " (" + "SERS".colorize(:green) + ")"
                    puts "This application allows you to view and amend the enrolment status of any student at the institution, as well as the current occupancy of any available classes."
                    puts
                    puts "What would you like to do? Use your numerical keys to select an option"
                    puts
                    puts "[1] Search for students"
                    puts "[2] View the class lists"
                    puts

                # Default 
                else
                    system 'clear'

                    puts "SERS".colorize(:green) + " > Student Search"
                    puts "Please select a program to display its students"
                    puts
                    puts "[1] #{programs[0]}"
                    puts "[2] #{programs[1]}"
                    puts "[3] #{programs[2]}"
                    puts "[4] #{programs[3]}"
                    puts "[5] Go back"
                    puts
            end
        when "Program students"

            system 'clear'
            input = ""
            displayMode = "Program Selection - Student Search"

            puts "SERS".colorize(:green) + " > Student Search"
            puts "Please select a program to display its students"
            puts
            puts "[1] #{programs[0]}"
            puts "[2] #{programs[1]}"
            puts "[3] #{programs[2]}"
            puts "[4] #{programs[3]}"
            puts "[5] Go back"
            puts
    end


    # Get user input
    input = validate_option_selection(gets, availableOptions[displayMode])
end

system 'clear'











# Example code for getting a student by SID
# result = getStudent("13245")

# if result.nil? 
#     puts "nope"
# else
#     puts result["name"]
# end


# Example code for getting a student by SID
# result = getProgram("Science")

# if result.nil? 
#     puts "nope"
# else
#     puts result["permitted_classes"]
# end

