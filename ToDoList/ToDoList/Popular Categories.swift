//
//  Popular Categories.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 26.03.2026.
//

import SwiftUI

struct PopularCategories: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        HStack {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Spacer()
            Button {
                action()
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(Color(.black))
                    
            }
        }
        .padding(20)
    }
}

#Preview {
    PopularCategories(text: "Popular Categories") {
        //
    }
}
