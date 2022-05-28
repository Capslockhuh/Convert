//
//  ContentView.swift
//  Convert
//
//  Created by Jan Andrzejewski on 28/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput: Double = 0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your unit here", value: $userInput, format: .number)
                }
            }
        }
        .navigationTitle("Convert")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
