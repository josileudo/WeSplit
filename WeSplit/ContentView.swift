//
//  ContentView.swift
//  WeSplit
//
//  Created by Josileudo on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    let students = ["Rayssa", "Michael", "Joseph"]
    @State private var selectedItems = "Michael"
    
    var body: some View {
        
//        MARK: We can use a ForEach to search an item by index.
        NavigationStack {
            Form {
                Picker("Select an item", selection: $selectedItems) {
                    ForEach(students, id: \.self) {
                        Text("\($0)")
                    }
                }
            }
            .navigationTitle("Selected student:")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
