//
//  AlarmsView.swift
//  iosalarms
//
//  Created by Patrick on 6/11/24.
//

import SwiftUI

struct AlarmsView: View {
    let maxRating: Int
    @Binding var currentRating: Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack {
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .foregroundColor(.yellow)
                .symbolVariant(.slash)
                .opacity(currentRating == 0 ? 0 : 1)
                .onTapGesture {
                    withAnimation{
                        currentRating = 0
                    }
                }
            ForEach(0..<maxRating,id: \.self) { rating in
                Image(systemName:"star")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
                    .symbolVariant(rating < currentRating ? .fill : .none)
                    .onTapGesture {
                        withAnimation{
                            currentRating = rating + 1
                        }
                    }
            }
        }
        .frame(width: 150)
    }
}

#Preview {
    struct PreviewWrapper: View {
        let maxRating = 5
        @State var currentRating = 2
        var body: some View {
            AlarmsView(
                maxRating: maxRating,
                currentRating: $currentRating
            )
        }
    }
    return PreviewWrapper()
}

