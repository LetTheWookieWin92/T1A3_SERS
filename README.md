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

Upon entering the application, the user will be presented with a home page, which will provide an overview of the features of the system and prompt them to select an action they wish to take; search for students or view the class lists. The user will select an option using numerical keys.

The user will be prompted on how to use each feature below as follows:

- **Look-up and display of student enrolment profiles**

  This feature option will be displayed on the home screen when the user enters the application. Selecting the option will take the user to a new display, where they are prompted to select one of the available programs of study from a list of options e.g. Engineering or Science by using numerical keys. Once selected, the user will be presented with the numbered list of students who are on that program, each of whom will have visual indicators depending on their state of enrolment. For example, a student who is fully enrolled will be indicated in green. The user will be able to select students using numerical keys, after which they will be presented with that student’s profile. The profile will contain the student’s personal details, their enrolled classes and a prompt indicating any action that needs to occur. For example, if a student is enrolled in only 2 subjects, the display will prompt the user to enrol the student in 2 more units.

  There are a number of errors that could occur whilst the user navigates the student search interface:

  - The application is unable to find any programs in the persistent storage; Programs.json, which contains all of the available programs of study. A message would be displayed to the user notifying them that no programs are currently available, and provide them an option to return them to the home page.

  - The application is unable to find any students on a particular program, in the persistent storage; Students.json, which contains all of the students and their associated information. In this case, a message would be displayed to the user notifying them that there are no students on that program of study, and provide them an option to return to the student search.

  - The application is unable to find the selected student within the Students.json file, and so cannot present the student profile. In this situation, the application will display a message to the user notifying them that the student could not be found, and provide them an option to return to the student list.

- **Display of all available classes and their current occupancy**

  This feature option will be displayed on the home screen when the user enters the application. Selecting the option will take the user to a new display, where they are prompted to select one of the available programs of study from a list of options e.g. Science or Business by using numerical keys. Once selected, the user will be presented with the numbered list of classes that are available are on that program, each of whom will have visual indicators depending on their state of occupancy. For example, a class that is full will be indicated in red. The user will be able to select classes using numerical keys, after which they will be presented with the list of students that are enrolled in that class and a message indicating the number of students and available place, and an option to go back to the class list.

  There are a number of errors that could occur whilst the user navigates the class lists interface:

  - The application is unable to find any programs in the persistent storage; Programs.json, which contains all of the available programs of study. A message would be displayed to the user notifying them that no programs are currently available, and provide them an option to return them to the home page.

  - The application is unable to find any classes for a particular program, in the persistent storage; Classes.json, which contains all of the available classes and their associated information. In this case, a message would be displayed to the user notifying them that there are no classes available on that program of study, and provide them an option to return to the class lists.

  - The application is unable to find the selected class within the Classes.json file, and so cannot present the class list. In this situation, the application will display a message to the user notifying them that the class could not be found, and provide them an option to return to the list of classes.

- **Ability to add or remove classes from student profiles**

  This feature option will be presented on the student profile display as “Amend student enrolment”. If the user selects this option, they will be prompted to pick whether they wish to add classes or remove classes, using numerical keys. If they choose to remove existing classes, they will be presented with a list of currently enrolled classes and instructions for selecting which one should be removed. If they choose to add a new class, they will be presented with a list of available classes for that student’s program of study, less the subjects they are already enrolled into. The user can indicate which class to add or cancel the operation using numerical keys.

  There are a number of errors that could occur whilst the user attempts to add or remove classes from student profiles:

  - The application is unable to save the changes to the Students.json and Classes.json, in the persistent storage. In this case, the application would reattempt the operation and if it still does not work, the user will be presented with an error message, and an option to go back to the student profile.

  - The user may attempt to add more classes to a student when they are already at the full 24 credit limit. This should be prevented by not presenting the option to add classes when the student is already at the limit, but if not the user will be presented with an error message, and an option to go back.

<br>

### Control Flow

<br>

## Implementation Plan

This project was planned and implemented using Trello, a project management workspace. The workspace for this project can be found <a href="https://trello.com/invite/b/fOSkJ9sx/25a0cdee1b504047b73bdd3d462c7fc0/t1a3-terminal-application">here</a>.

<br>
**Insert screenshots**

<br>

## User Help Documentation

<br>

## References

- Australian Bureau of Statistics. (2021, February 19). Schools. Retrieved from https://www.abs.gov.au/statistics/people/education/schools/latest-release
