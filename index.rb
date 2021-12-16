# Ruby gems
require 'json'


require_relative './methods.rb'
require_relative './validation.rb'

# Initialise the user input variable and clear terminal
system 'clear'
displayMode = "Home" 
availableOptions = 2
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
                    availableOptions = 5

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
                    availableOptions = 2
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


                
                when 2


                # Default 
                else
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


    puts "availableOptions: #{availableOptions}"
    # Get user input
    input = validate_option_selection(gets, availableOptions)
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

