# Look up method, which accepts an SID as an input and returns the student hash
def getStudent(input_SID)
    
    # Read the Students.json file
    studentsJSON = File.read("./data/students.json")

    # Parse the JSON into a hash
    studentsHash = JSON.parse(studentsJSON)

    # Look for inputted SID amongst list of students
    found_student = studentsHash.find { |student| student["SID"] == input_SID }

    # Return student
    return found_student
end 


# Look up method, which accepts a program name as an input and returns the program hash
def getProgram(program_name)
    
    # Read the Programs.json file
    programsJSON = File.read("./data/programs.json")

    # Parse the JSON into a hash
    programsHash = JSON.parse(programsJSON)

    # Look for inputted program name amongst list of programs
    found_program = programsHash.find { |program| program["name"] == program_name }

    # Return program
    return found_program
end 

# Method, which returns ALL programs present in the Programs.json as a hash
def getPrograms()
    
    # Read the Programs.json file
    programsJSON = File.read("./data/programs.json")

    # Parse the JSON into a hash
    programsHash = JSON.parse(programsJSON)

    # Returns all programs
    return programsHash
end 