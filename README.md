# HealthTopics
Overview
This iOS app fetches health topics from an API and displays them in a list. Users can select a topic to view detailed information about it.

# Features
Display a list of health topics
View detailed information about a selected topic
Stylish and user-friendly interface
Error handling and loading indicators for a seamless user experience
# Instructions to Run the App

Clone the repository:

bash

git clone https://github.com/yourusername/health-topics-app.git
Open the project folder:

bash

cd health-topics-app
Open the Xcode project:

bash

open HealthTopicsApp.xcodeproj
Build and run the app using Xcode on an iOS simulator or device.

# Design/Architectural Decisions
Architecture: The app follows the MVVM (Model-View-ViewModel) architecture for a clean separation of concerns.
Network Layer: URLSession is used to handle API requests, ensuring proper error handling and data parsing.
UI: SwiftUI is used for creating the user interface programmatically.
# Challenges Faced
API Response Handling: Ensuring proper handling of asynchronous API responses 
The response from the API was nested so I struggled a little bit while making the model


# video
https://drive.google.com/file/d/1Dw2O_mpIIqmW87dWityWVqKTidme9I5S/view?usp=drivesdk
