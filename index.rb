# Ruby gems
require 'json'


require_relative './methods.rb'
require_relative './validation.rb'

# Initialise the user input variable and clear terminal
system 'clear'
input = ""


# Overall program loop; application will continue to operate until user types exit
while input != "exit"

    # Check input
    case input
        # Input was not a valid option
        when 0 
            #system 'clear'
            # Prints the welcome message
            puts "Welcome to the Student Enrolment System (SERS)"
            puts "This application allows you to view and amend the enrolment status of any student at the institution, as well as the current occupancy of any available classes."
            puts

            puts "What would you like to do? Use your numerical keys to select an option"
            puts
            puts "[1] Search for students"
            puts "[2] View the class lists"
            puts
            puts "Invalid option. Please type 1 or 2 to select and option"
        # Student search option
        when 1
            #system 'clear'
            puts "Student search mode"
        # Class list option
        when 2
            #system 'clear'
            puts "Class list mode"
        # Exit the application
        when "exit"
        input = "exit"
        # Default 
        else
            #system 'clear'
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

    # Get user input
    input = validate_option_selection(gets, 2)

    
end


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

