//
//  SectionsPopularTrips.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 25.03.2026.
//

import SwiftUI

struct PopularTrips: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        HStack {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
            Spacer()
            Button {
                action()
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(.black)
            }
        }
        .padding(30)
    }
}

#Preview {
    PopularTrips(text: "Popular Trips") {
        // Preview action
    }
}
