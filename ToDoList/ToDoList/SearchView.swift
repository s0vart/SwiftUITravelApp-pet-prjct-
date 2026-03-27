//
//  SearchView.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 25.03.2026.
//

import SwiftUI

struct SearchView: View {
    
    @State var text: String = ""
    
    var body: some View {
        HStack(spacing: 15) {
            TextField("Start your search trip...", text: $text)
                .frame(height: 35)
                .padding(10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 5)
            Button {
                 //
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(Color.gray)
                        .shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 5)
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.white)
                }
            }

        }
        .padding(20)
    }
}

#Preview {
    SearchView()
}
