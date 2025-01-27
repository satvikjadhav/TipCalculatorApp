//
//  ContentView.swift
//  TipCalculatorApp
//
//  Created by Satvik  Jadhav on 1/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var billAmount: Double = 0.0
    @State private var tipPercentage: Double = 15.0
    @State private var numberOfPeople: Double = 1.0
    @State private var selectedCurrency: String = "USD"
    @State private var showResult: Bool = false
    
    private var tipAmount: Double {
        billAmount * (tipPercentage / 100)
    }
    
    private var totalAmount: Double {
        billAmount + tipAmount
    }
    
    private var amountPerPerson: Double {
        totalAmount / numberOfPeople
    }
    
    private let curriencies : [String] = ["USD", "EUR", "GBP", "JPY"]
    
    var body: some View {
        
        VStack {
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Picker("Currency", selection: $selectedCurrency) {
                ForEach(curriencies, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            // Sliders
            // Bill Amount Slider
            VStack {
                Text("Bill Amount: \(billAmount, format: .currency(code: selectedCurrency))")
                Slider(value: $billAmount, in: 0...1000, step: 1)
                    .accentColor(.green)
                    .padding(.horizontal)
            }
            
            // Tip Percentage Slider
            VStack {
                Text("Tip Percentage: \(Int(tipPercentage))%")
                Slider(value: $tipPercentage, in: 1...100, step: 1)
                    .accentColor(.blue)
                    .padding(.horizontal)
            }
            
            // Number of People Slider
            VStack {
                Text("Number of People: \(Int(numberOfPeople))")
                Slider(value: $numberOfPeople, in: 1...10, step: 1)
                    .accentColor(.purple)
                    .padding(.horizontal)
            }
            
            
            
            
                
        }
    }
    
}

#Preview {
    ContentView()
}
