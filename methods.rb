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

# Look up method, which accepts an SID as an input and returns the student hash
def getProgram(program_name)
    
    # Read the Students.json file
    programsJSON = File.read("./data/programs.json")

    # Parse the JSON into a hash
    programsHash = JSON.parse(programsJSON)

    # Look for inputted SID amongst list of students
    found_program = programsHash.find { |program| program["name"] == program_name }

    # Return student
    return found_program
end 