//
//  ContentView.swift
//  WeSplit
//
//  Created by Josileudo on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var result = 0
    
    var body: some View {
        VStack {
            Text("\(result)")
            Button("Increment"){
                result += 1
            }
            .padding(10)
            
            Button("Decrement"){
                result -= 1
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
