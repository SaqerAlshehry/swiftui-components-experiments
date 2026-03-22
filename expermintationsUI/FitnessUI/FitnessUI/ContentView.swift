//
//  ContentView.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.core.training")
                .imageScale(.large)
                .foregroundStyle(.tint)
                
            Text("Fitness UI")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
