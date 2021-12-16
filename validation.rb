# Checks the user's input was a valid option and raised exceptions as necessary
def validate_option_selection(user_input, options_count)

    # Removes new line character
    user_input = user_input.chomp

    # Trim any whitespace
    user_input = user_input.strip

    if user_input.eql? "exit"
        return "exit"
    else
        # Converts string input to integer
        user_input = user_input.to_i

        # Checks if the input was a number between 1 and the number of options available
        if user_input.between?(1,options_count)
            return user_input
        else
            # Returning a 0 will signal a validation failure
            return 0
        end
    end
end