//
//  ContentView.swift
//  Convert
//
//  Created by Jan Andrzejewski on 28/05/2022.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var keyboardIsFocused: Bool
    
    let conversionUnits = ["Celcius to Farenheit", "Liters to Pints", "Meters to Feet"]
    
    @State private var userInput: Double = 0
    @State private var conversionUnit = "Celcius to Farenheit"
    
    var convertedUnit: Double{
        if conversionUnit == "Celcius to Farenheit" {
            let convertedUnit = (userInput * 1.8) + 32
            return convertedUnit
        } else if conversionUnit == "Liters to Pints" {
            let convertedUnit = userInput * 2.11338
            return convertedUnit
        } else if conversionUnit == "Meters to Feet" {
            let convertedUnit = userInput * 3.28084
            return convertedUnit
        }
        return self.convertedUnit
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your unit here", value: $userInput, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($keyboardIsFocused)
                } header: {
                    Text("Enter your unit here")
                }
                
                Section {
                    Picker("Unit Conversion", selection: $conversionUnit) {
                        ForEach(0..<3) {
                            Text(conversionUnits[$0])
                        }
                    }
                }
                
                Section {
                    Text(convertedUnit, format: .number)
                } header: {
                     Text("Converted unit")
                }
            }
            .navigationTitle("Convert")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        keyboardIsFocused = false
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
// TODO: fix picker so it shows the checkmark
