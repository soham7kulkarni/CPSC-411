//
//  Hello.swift
//  Starter
//
//  Created by csuftitan on 11/13/23.
//

// Import SwiftUI framework, which provides tools for building user interfaces
import SwiftUI

// Define a View called Hello
struct Hello: View {
    // This View will display some content
    var body: some View {
        // A navigation view containing multiple elements
        NavigationView {
            // A scrollable container to hold various items
            ScrollView {
                // Link to navigate to the second screen when tapped
                NavigationLink("Hello World!", destination: secondScreen())
                
                // Text displaying a course name
                Text("CPSC 411")
                
                // Text displaying the course topic
                Text("iOS Mobile development")
                
                // Text displaying the semester
                Text("Fall 23")
            }
            // Set the title for the navigation bar
            .navigationTitle("Profile")
            
            // Define items in the navigation bar
            .navigationBarItems(
                // Show an image on the leading (left) side of the navigation bar
                leading: Image(systemName: "person.fill"),
                
                // Show an image on the trailing (right) side of the navigation bar
                trailing: NavigationLink(destination: secondScreen(),
                                         label: {
                                             Image(systemName: "gear")
                                         }
                            )
            )
        }
    }
}

// Define another View called secondScreen
struct secondScreen: View {
    // Environment property to manage the presentation mode of the screen
    @Environment(\.presentationMode) var presentationMode
    
    // This View will display some content
    var body: some View {
        // Stack views on top of each other
        ZStack {
            // Background color for the screen
            Color.white.edgesIgnoringSafeArea(.all)
            
            // Set the title for the navigation bar
            .navigationTitle("Welcome to Class!")
            
            // Hide the navigation bar
            .navigationBarHidden(true)
            
            // Stack views vertically
            VStack {
                // Link to display the syllabus when tapped
                NavigationLink("Syllabus", destination: Text("CPSC 411 Syllabus"))
                
                // Button to go back to the previous screen
                Button("BACK") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

// Preview the Hello View
// The code below provides a preview of the Hello View in the SwiftUI canvas
// This allows developers to see how the UI will look
#Preview {
    Hello()
}

