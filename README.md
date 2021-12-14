# Terminal Application (T1A3)

**Author:** Geoff Reid&nbsp;&nbsp;&nbsp;&nbsp; **Date:** 13 December 2021&nbsp;&nbsp;&nbsp;&nbsp; **GitHub repository:** <a href="https://github.com/LetTheWookieWin92/T1A3_SERS">View</a>

## Software Development Plan

### Purpose

In 2020, there were more than 4 million students enrolled in over 9,500 educational institutions in Australia (Australian Bureau of Statistics, 2021). Of the many systems and processes that underpin a school's successful operation, the ability of staff to perform enrolment changes for students is of vital importance.

For each academic year, institutions will establish a list of classes that will be available for students to enrol in. Larger institutions, such as colleges or universities, may offer a wide choice of potential classes, and so when students make their selections, they can generally expect their enrolment to differ from that of their peers, even from those who are undertaking the same program.

Furthermore, institutions must often impose a limit on the number of enrolments for each class, to ensure that venues are not overcrowded and that a reasonable staff to student ratio is upheld.

Given the high volume of students and potential classes present at any large institution, a bespoke system is required to ensure staff members can perform rapid, accurate record keeping. Such a system must also carry out any necessary validation in respect of class enrolments, in order to ensure consistency and prevent potential errors.

The proposed terminal application would serve as a digital platform for staff members to read and update student enrolment profiles and class lists. Using the application, staff members would be able to look up individual students using their unique identifier, view their current enrolment, add or remove classes and identify recommended classes, based upon the student’s program. Additionally, staff members would be able to view the list of available classes and their current occupancy.

The application would provide a range of visual prompts to assist the staff member to make changes to student enrolments and would prevent them from making errors, for example over-subscribing a class, which could lead to broader problems for the institution.

<br>

### Scope

The project deliverables are as follows:

**Development of a terminal application (Ruby)**, with the following functionality:

- Persistent storage of students and classes
- Look-up students using their student identifier (SID)
- Student profile display, containing their SID, full name, educational program, currently enrolled classes and recommended units
- Ability to add or remove classes from student profiles
- Class list display, containing all classes and their current occupancy
- Effective validation and error handling in respect of user operations
- Provision of clear user prompts

<br>

### Out of Scope

The project deliverables do not include the following:

- Any features or operations not listed in the aforementioned project deliverables

<br>

### Features

The proposed terminal application will include the following features:

- **Look-up and display of student enrolment profiles, which derive data from persistent storage** <br>Students and their associated data will be contained within a persistent file on the application. This will enable a permanent digital record of their student identifier, full name, educational program and the current state of their enrolment. When the user looks up a student, they will be presented with a concise display of all the student’s details and prompts for changing their enrolment. As SIDs are in a consistent numerical format, the application will perform validation on the user’s entered characters.

- **Display of all available classes and their current occupancy, which derive data from persistent storage** <br> Each class will be stored within a persistent file on the application and will contain a list of currently enrolled students. When the user accesses the class display, they will be presented with a list of all available units and the current number of occupants, which will be colourised based upon how many places remain in the class. Selecting a class from that list will display the full list of students who have enrolled in that class.

- **Ability to add or remove classes from student profiles** <br> Through the student enrolment profile display, the user will be able to add or remove classes from any given student. These operations will have a range of validation checks and user prompts to ensure the student isn’t already: enrolled in the requested unit or enrolled in the maximum number of credits.

<br>

### User Interaction and Experience

<br>

### Control Flow

<br>

## Implementation Plan

<br>

## User Help Documentation

<br>

## References

- Australian Bureau of Statistics. (2021, February 19). Schools. Retrieved from https://www.abs.gov.au/statistics/people/education/schools/latest-release
