# Ruby gems
require 'json'


require_relative './methods.rb'
require_relative './validation.rb'

# Initialise the user input variable and clear terminal
system 'clear'
displayMode = "Home" 

# Different menus have different numbers of options, this hash provides a means to look up how many options there are (DRY-er than keeping track of it throughout the script)
availableOptions = { "Home" => 2,  "Program Selection - Class Lists" => 5 }

programs = 

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
                    puts "Welcome to the Student Enrolment System (SERS)"
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

                # Class list option
                when 2
                    system 'clear'
                    input = ""
                    displayMode = "Program Selection - Class Lists"

                    puts "SERS > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] Pychology"
                    puts "[2] Science"
                    puts "[3] Engineering"
                    puts "[4] Business"
                    puts "[5] Go back"
                    puts

                # Default 
                else
                    system 'clear'
                    # Prints the welcome message
                    puts "Welcome to the Student Enrolment System (SERS)"
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

                    puts "SERS > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] Pychology"
                    puts "[2] Science"
                    puts "[3] Engineering"
                    puts "[4] Business"
                    puts "[5] Go back"
                    puts
                    puts "Invalid option. Please enter one of the numerical options above"                    
                
                when 1
                    system 'clear'
                   
                    puts "SERS > Class lists > Psychology"
                    puts "The following Psychology classes are available. Select one to view the class list"
                    puts  

                    classes = getClasses("Psychology")
                    optionNumber = 1
                    classes.each do |classItem| 
                        
                        puts "[" + optionNumber.to_s + "] " + classItem["code"] + " " + classItem["name"] + " (Occupants: " + classItem["occupants"].count.to_s + "/20)"
                        optionNumber = optionNumber + 1
                    end

                    input = ""
                    displayMode = "Program classes"

                # Go back
                when 5
                    system 'clear'
                    input = ""
                    displayMode = "Home"

                    puts "Welcome to the Student Enrolment System (SERS)"
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

                    puts "SERS > Class lists"
                    puts "Please select a program to display available classes"
                    puts
                    puts "[1] Pychology"
                    puts "[2] Science"
                    puts "[3] Engineering"
                    puts "[4] Business"
                    puts "[5] Go back"
                    puts
            end
            

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

