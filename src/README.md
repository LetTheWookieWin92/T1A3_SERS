# Terminal Application (T1A3)

**Author:** Geoff Reid&nbsp;&nbsp;&nbsp;&nbsp; **Date:** 13 December 2021&nbsp;&nbsp;&nbsp;&nbsp; **GitHub repository:** <a href="https://github.com/LetTheWookieWin92/T1A3_SERS">View</a>

## Software Development Plan

### Purpose

In 2020, there were more than 4 million students enrolled in over 9,500 educational institutions in Australia (Australian Bureau of Statistics, 2021). Of the many systems and processes that underpin a school's successful operation, the ability of staff to perform enrolment changes for students is of vital importance.

For each academic year, institutions will establish a list of classes that will be available for students to enrol in. Larger institutions, such as colleges or universities, may offer a wide choice of potential classes, and so when students make their selections, they can generally expect their enrolment to differ from that of their peers, even from those who are undertaking the same program.

Furthermore, institutions must often impose a limit on the number of enrolments for each class, to ensure that venues are not overcrowded and that a reasonable staff to student ratio is upheld.

Given the high volume of students and potential classes present at any large institution, a bespoke system is required to ensure staff members can perform rapid, accurate record keeping. Such a system must also carry out any necessary validation in respect of class enrolments, in order to ensure consistency and prevent potential errors.

The proposed terminal application would serve as a digital platform for staff members to read and update student enrolment profiles and class lists. Using the application, staff members would be able to look up individual students using their unique identifier and view their current enrolment. Additionally, staff members would be able to view the list of available classes and their current occupancy.

<br>

### Scope

The project deliverables are as follows:

**Development of a terminal application (Ruby)**, with the following functionality:

- Persistent storage of students and classes
- Look-up students using their program of study and view their enrolled classes
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

- **Look-up and display of student enrolment profiles** <br> Students and their associated data will be contained within a persistent file on the application. This will enable a permanent digital record of their student identifier, full name, educational program and the current state of their enrolment. When the user looks up a student by program, they will be presented with a concise display of all the student’s details.

- **Display of all available classes and their current occupancy** <br> Each class will be stored within a persistent file on the application and will contain a list of currently enrolled students. When the user accesses the class display, they will be presented with a list of all available units and the current number of occupants.

- **Persistence of program, class and student data** <br> The application will persistently store the programs, classes and students data in JSON files, where they can be accessed every time the application is run.

The application will utilise the colorize, rspec and JSON gems.

<br>

### User Interaction and Experience

Upon entering the application, the user will be presented with a home page, which will provide an overview of the features of the system and prompt them to select an action they wish to take; search for students or view the class lists. The user will select an option using numerical keys.

The user will be prompted on how to use each feature below as follows:

- **Look-up and display of student enrolment**

  This feature option will be displayed on the home screen when the user enters the application. Selecting the option will take the user to a new display, where they are prompted to select one of the available programs of study from a list of options e.g. Engineering or Science by using numerical keys. Once selected, the user will be presented with a list of students who are on that program, each of whom will have visual indicators depending on their state of enrolment. In the case where a student isn't enrolled in any classes, the application will not throw an error, but instead indicate an enrolment of 0/4.

- **Display of all available classes and their current occupancy**

  This feature option will be displayed on the home screen when the user enters the application. Selecting the option will take the user to a new display, where they are prompted to select one of the available programs of study from a list of options e.g. Science or Business by using numerical keys. Once selected, the user will be presented with a list of classes that are available on that program, each of whom will have visual indicators depending on their state of occupancy. In the case where a class doesn't have any students the application will not throw an error, but instead indicate an enrolment of 0/(class max capacity).

- **Persistence of program, class and student data**

  This feature option will work in the background of the application. The success of the application hinges on its ability to provide rapid, up-to-date data in relation to student and class enrolments. All of this is provided by ensuring the persistence of information and having efficient fetch and filter methods, which results in a quick interface experience.

<br>

### Control Flow

This application uses a complex control loop to deliver the interface

<img src="../Screenshots/Control flow.png" alt="Control flow" width="500"/>

<br>

## Implementation Plan

This project was planned and implemented using Trello, a project management workspace. The workspace for this project can be found <a href="https://trello.com/invite/b/fOSkJ9sx/25a0cdee1b504047b73bdd3d462c7fc0/t1a3-terminal-application">here</a>.

<br>
<img src="../Screenshots/20211215 at 2039.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211216 at 1300.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211216 at 1531.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211216 at 1811.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211216 at 1907.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211217 at 1545.png" alt="Control flow" width="300"/>
<img src="../Screenshots/20211218 at 2004.png" alt="Control flow" width="300"/>

<br>

## User Help Documentation

**Overview**

The purpose of this application is to enable staff members at educational institutions to view the enrolment status of students and classes, depending on the specified program of study.

**Navigation**

The user can navigate the application using the numerical keys on their keyboard to navigate the interface prompts. All menus have instructions for how to go back and the application can be closed by typing 'exit'

**Viewing student enrolment**

Upon launching the application, the user can select 'Search for students', which will display the program options. Selecting a program option will display all of the students who are on that program of study.

**Viewing class lists**

Upon launching the application, the user can select 'View the class lists', which will display the program options. Selecting a program option will display all of the classes for that program of study, and their current occupancy.

<br>

## Testing

This application utilises the rspec Ruby gem to perform unit testing. 4 successful tests have been carried out on methods within the methods.rb and validation.rb files. You can run the tests by exiting the application (type 'exit') then running rspec -f d (to see the breakdown of the tests)

For the methods.rb testing, the test is examining whether given a class code, the correct class name is returned.

For the validation.rb testing, the test is examing whether given an invalid input, the correct error flag is returned. The second case is testing whether a valid number will run successfully.

<br>

## References

- Australian Bureau of Statistics. (2021, February 19). Schools. Retrieved from https://www.abs.gov.au/statistics/people/education/schools/latest-release
