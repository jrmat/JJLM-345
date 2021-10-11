//
//  NameView.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import SwiftUI

/// Displays view of custom cards.
struct NameView : View {
    @State private var deck : [String]  // deck to be used
    @State private var showingRules = false // set to true if 'Rules' button tapped
    private var storeDeck : [String]  // copy of players
    
    
    
    /// Initialises players names for task card game.
    /// - Parameters:
    ///   - inDeck:
    init(deck: [String]) {
        self.deck = deck.shuffled()  // deck with names
        storeDeck = deck
    }
    
/// Displays cards as a stack.
    var body: some View {
        ZStack {
            ForEach(0..<deck.count, id: \.self) {
                        index in
                NameCardView(card: self.deck[index]) {
                            withAnimation {
                                if (index >= 0 && index < self.deck.count) {
                                    self.removeCard(at: index) // removes card when tapped
                                }
                            }
                        }
                        .stacked(at: index, in: self.deck.count) // stacks cards
                    }
            if(self.deck.isEmpty) {
                Button("re-shuffle") {
                    self.deck.append(contentsOf: storeDeck)
                    self.deck.shuffle()
                }
            }
            Button("Rules") {
                self.showingRules.toggle()
            }
            .position(x: 350 , y: 20)
            .padding(20)
            .sheet(isPresented: $showingRules) {
                    RulesList()
            }
        }
    }
    
    /// Removes current indexed card from stack.
    /// - Parameter index: The index of the card to be removed.
    func removeCard(at index: Int) {
        deck.remove(at: index)
    }
}
