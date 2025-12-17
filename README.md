Volunteerly: Task list Feature

This repository contains part 1 of the fully implemented feature of the development work for the Group Computing Project.

Volunteerly is an application designed to help users manage their volunteering activities, track time commitments, and reduce burnout.

This part of the project focuses on implementing the Task list feature. The Add Task feature was initially designed during Log Task 3 but during the development phase this feature was extended so that any task added by the user is automatically saved and displayed in the Task List screen where the user can then check or delete the events off. 

Implemented Features
- role selection screen, the user picks between being a coordinator or a volunteer
- Sign up and login screens  
- Volunteer home dashboard  
- Add Task screen  
- Task List screen
  
Technical Implementation
- Built using Flutter
- Tasks are stored locally on the device using SharedPreferences
- Task data is stored in JSON format
- Local storage was chosen because this feature is small in scope. In a full implementation of the application a Firebase database would be used instead

Testing
The feature was tested through manual functional testing:
- Verifying that tasks are saved when the Done button is pressed
- Confirming that tasks appear correctly in the Task List screen
- Ensuring tasks are removed when deleted
- Testing basic input validation scenario

 Installation Instructions
1. Ensure Flutter SDK is installed  
2. Clone this repository  
3. Run flutter pub get
4. Run the project using flutter run


