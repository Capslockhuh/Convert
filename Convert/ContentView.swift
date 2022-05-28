//
//  ContentView.swift
//  Convert
//
//  Created by Jan Andrzejewski on 28/05/2022.
//

import SwiftUI

struct ContentView: View {
    let conversionUnits = ["Celcius to Farenheit", "Liters to Pints", "Meters to Feet"]
    
    @State private var userInput: Double = 0
    @State private var conversionUnit = "Celcius to Farenheit"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your unit here", value: $userInput, format: .number)
                }
                
                Section {
                    Picker("Unit Conversion", selection: $conversionUnit) {
                        ForEach(0..<3) {
                            Text(conversionUnits[$0])
                        }
                    }
                }
                
                Section {
                    Text("Placeholder", format: .number)
                } header: {
                     Text("Converted unit")
                }
            }
            .navigationTitle("Convert")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
