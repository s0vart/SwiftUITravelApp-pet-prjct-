//
//  TripCard.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 25.03.2026.
//

import SwiftUI

struct TripCard: View {
    
    var image: String
    var title: String
    var transcription: String
    var action: () -> Void
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 200)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Button {
                    //
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color(.systemGray2))
                            .frame(width: 30, height: 30)
                            .offset(x: 210, y: 10)
                        Image(systemName: "heart.fill")
                            .foregroundStyle(Color(.red))
                            .frame(width: 25, height: 25)
                            .offset(x: 210, y: 10)
                    }
                }
            }
            VStack (alignment: .leading){
                Text(title)
                    .font(.system(size: 18))
                    .bold()
                Text(transcription)
                    .font(.system(size: 10))
                    .foregroundStyle(Color(.systemGray))
            }
        }
        .frame(width: 250, height: 250)
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.2),radius: 10, x: 0, y: 5)
    }
}

#Preview {
    TripCard(image: "img2", title: "Magic Card", transcription: "Magic Card, USA") {
        //
    }
}
