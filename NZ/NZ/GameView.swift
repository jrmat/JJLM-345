//
//  GameView.swift
//  Na Zdrowie
//
//  Displays view of selected card game.
//

import SwiftUI

/// Extension of view used for animation of card removal.
extension View { 
    
    /// Creates stack effect of cards by offsetting each by 10 more than the card prior, starting from 0.
    /// - Parameters:
    ///   - position: The position of the Card object in the deck.
    ///   - total: The amound of Card objects in the deck.
    /// - Returns: Offset value for given Card in the deck.
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = CGFloat(total - position)
        return self.offset(CGSize(width: 0, height: offset * 10))
    }
}
 /// Displays view of selected game.
struct GameView: View {
    @State private var deck : [Card] // deck to be used
    @State private var showingRules = false // set to true if 'Rules' button tapped
    private var temp : [Card] // copy of deck to be used
    private var rules : Bool // set to true if taskDeck being used
    
    /// Initialises a new deck of Card objects with given inputs.
    /// - Parameters:
    ///   - deck: The shuffled deck to be used.
    ///   - inRules: Boolean value that determines whether rules for Task Deck are displayed or not.
    init(deck: [Card], inRules: Bool) {
        self.deck = deck.shuffled()
        temp = deck // temporary placeholder of used deck to be used for reshuffle
        rules = inRules
    }
    /// Displays the cards from the selected deck.
    var body: some View {
        ZStack {
            ForEach(0..<deck.count, id: \.self) {
                index in
                CardView(card: self.deck[index]) {
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
                    self.deck.append(contentsOf: temp)
                    self.deck.shuffle()
                }
            }
            if(self.rules == true) { // shows rules button if rules set to true
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
    }
        
    /// Removes current indexed card from stack.
    /// - Parameter index: The index of the card to be removed.
    func removeCard(at index: Int) {
        deck.remove(at: index)
    }
}

/// Shows preview of GameView.
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(deck: Card.taskDeck, inRules: true)
            .previewDevice("iPhone 11")
    }
}
