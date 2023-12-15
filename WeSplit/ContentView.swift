//
//  ContentView.swift
//  WeSplit
//
//  Created by Josileudo on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2.0
    @State private var tipPercent = 20
    
    var body: some View {
        Form {
            Section {
                TextField(
                    "Check amount: ",
                    value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                        
                )
                .keyboardType(.decimalPad)
            }
            
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
