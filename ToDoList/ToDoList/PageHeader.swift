//
//  PageHeader.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 25.03.2026.
//

import SwiftUI

struct PageHeader: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 1)
                        .fill(Color(.systemGray4))
                        .frame(width: 50, height: 50)
                        .padding(.horizontal, 20)
                    
                    Image(.img1)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Online")
                        .font(.system(size: 12, weight: .regular))
                    Text("Mark Nevmerzhitskiy")
                        .font(.system(size: 17, weight: .bold))
                }
            }
            Spacer()
            Button {
                //
            } label: {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 1)
                        .fill(Color(.systemGray4))
                        .frame(width: 45)
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .foregroundStyle(.gray)
                        .overlay(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                            Circle()
                                .fill(.red)
                                .frame(width: 7)
                                .offset(y: -2)
                        }
                }
            }
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    PageHeader()
}
