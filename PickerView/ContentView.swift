//
//  ContentView.swift
//  PickerView
//
//  Created by Shah Md Imran Hossain on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    // by default struct property in not editable
    // @State is making the property editable
    // @State variable also updates the views which are using them
    // @State is designed for simple properties which stays in one view
    // always make sure to use private for consistency
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        // A view that displays a root view and enables you to present additional views over the root view.
        NavigationStack {
            // A container for grouping controls used for data entry, such as in settings or inspectors.
            Form {
                // $ - working as a bidirectional biniding operator
                // 1 - read the value from name
                // 2 - also update name while user the name TextField
                // creating a picker with picker
                Picker("Select your student", selection: $selectedStudent) {
                    // for each for creating multiple text views with student string array
                    // id - ask for unique property
                    // \.self is telling every string is unique itself
                    // duplicate string in the array might hit problem
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
