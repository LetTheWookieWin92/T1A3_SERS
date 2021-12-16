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