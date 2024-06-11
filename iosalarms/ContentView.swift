//
//  ContentView.swift
//  iosalarms
//
//  Created by Patrick on 6/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var currentRating = 0
    
    var body: some View {
        AlarmsView(
            maxRating: 5,
            currentRating: $currentRating)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
