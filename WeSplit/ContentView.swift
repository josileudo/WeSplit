//
//  ContentView.swift
//  WeSplit
//
//  Created by Josileudo on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercent = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [5, 10, 15, 20, 0]
    
    func totalPerPerson() -> Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercent)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    func amountTotal() -> Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercent)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        
        return grandTotal
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField(
                        "Check amount: ",
                        value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                    
                    Picker("Number of peoples", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) Peoples")
                        }
                    }
                }
                
                Section("How much percent you're choice?") {
                    Picker("Select percentage", selection: $tipPercent){
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("Amount per person") {
                    Text(totalPerPerson(), format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Total amount") {
                    Text(amountTotal(), format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar() {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                    .backgroundStyle(Color(.red))
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
