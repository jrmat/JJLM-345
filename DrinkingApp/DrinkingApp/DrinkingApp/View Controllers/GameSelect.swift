//
//  GameSelect.swift
//  DrinkingApp
//
//  Class that shows navigation view of decks to be used
//

import SwiftUI
struct GameSelect : View {
    var body: some View {
        // navigates to selected deck
        NavigationView {
            List {
                NavigationLink(destination: GameView(deck : Card.taskDeck, inRules: true)) {
                    VStack(alignment: .leading){
                    Text("Task Cards")
                        .font(.title)
                        
                        
                        Spacer(minLength : 20.0)
                        
                    Text("Different drinking tasks on each card")
                        .foregroundColor(.gray)
                        .font(.title2)
                    }
                }
                .padding(20)
                Spacer()
                NavigationLink(destination: GameView(deck : Card.NHIE, inRules: false)) {
                    VStack(alignment: .leading){
                    Text("Never Have I Ever")
                        .font(.title)
                        
                        Spacer(minLength : 20.0)
                        
                    Text("Never have I ever questions")
                        .foregroundColor(.gray)
                        .font(.title2)
                    }
                }
                .padding(20)
                Spacer()
                NavigationLink(destination: GameView(deck : Card.standard, inRules: false)) {
                    VStack(alignment: .leading){
                    Text("Standard Deck")
                        .font(.title)
                        
                        Spacer(minLength : 20.0)
                        
                    Text("Standard deck of 52 cards shuffled")
                        .foregroundColor(.gray)
                        .font(.title2)
                    }
                }
                .padding(20)
            }
            .navigationBarTitle("Decks", displayMode: .inline)
        }
    }
}

struct GameSelect_Previews: PreviewProvider {
    static var previews: some View {
        GameSelect()
            .previewDevice("iPhone 11")
    }
}
