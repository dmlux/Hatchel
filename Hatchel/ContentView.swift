//
//  ContentView.swift
//  Hatchel
//
//  Created by Denis-Michael Lux on 16.11.26.
//

import SwiftUI

internal struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .accessibilityHidden(true)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
