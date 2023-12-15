//
//  ContentView.swift
//  WeSplit
//
//  Created by Josileudo on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
//      MARK: With binding we can use to read/write a value.
//      MARK: For use a binding, we can add a $ before state.
//      MARK: Below we have same example
        Form {
            TextField("Describe here", text: $text)
            Text("My new text: \(text)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
