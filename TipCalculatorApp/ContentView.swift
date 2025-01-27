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
    @State private var showCurrency: String = "USD"
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
        Text("Hello, World!")
    }
    
}

#Preview {
    ContentView()
}
