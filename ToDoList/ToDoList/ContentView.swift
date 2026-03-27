//
//  ContentView.swift
//  ToDoList
//
//  Created by Mark Nevmerzhitskiy on 24.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            PageHeader()
            
            VStack(alignment: .leading, spacing: -10) {
                SearchView()
                
                VStack(alignment: .leading, spacing: -20) {
                    
                    PopularTrips(text: "Popular Trips") {
                        //
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            TripCard(image: "img2", title: "Magic Card", transcription: "Magic Card, USA") {
                                //
                            }
                            TripCard(image: "img3", title: "Game Over", transcription: "Game Over, CANADA") {
                                //
                            }
                            TripCard(image: "img4", title: "Franklin SHTEIN", transcription: "Franklin SHTEIN, USA") {
                                //
                            }
                            TripCard(image: "img5", title: "Welcome Music", transcription: "Welcome Music, UK") {
                                //
                            }
                        }
                        .padding(30)
                    }
                }
                
                VStack {
                    PopularCategories(text: "Popular Categories") {
                        //
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            CatCard(image: "img3", title: "The Weeknd", subtitle: "Blinding Lights")
                            CatCard(image: "img2", title: "Split", subtitle: "Push Me")
                            CatCard(image: "img5", title: "Garage Band", subtitle: "Listening")
                            CatCard(image: "img4", title: "Back Doors", subtitle: "Hot")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ContentView()
}
