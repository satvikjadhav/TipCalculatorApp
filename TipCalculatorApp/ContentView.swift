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
    @State private var numberOfPeople: Int = 1
    @State private var showCurrency: String = "USD"
    @State private var showResult: Bool = false
    
    var body: some View {
        Text("Hello, World!")
    }
    
}

#Preview {
    ContentView()
}
