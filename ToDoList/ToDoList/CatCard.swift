//
//  CatCard.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 26.03.2026.
//

import SwiftUI

struct CatCard: View {
    
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            VStack (alignment: .leading){
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(subtitle)
                    .fontWeight(.light)
            }
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}


#Preview {
    CatCard(image: "img2", title: "Split", subtitle: "Push Me")
}
