//
//  CustomGameView.swift
//  Na Zdrowie
//
//  Displays view of user's custom cards.
//
import SwiftUI

/// Displays view of custom cards.
struct CustomGameView : View { 
    @State private var showingEditScreen = false
    @State private var deck = [Card]() // deck to be used
    
    /// Displays custom cards as a stack.
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
                    if(self.deck.isEmpty){
                        Button("re-shuffle"){
                            loadCustom()
                    }
                }
                Button("Edit"){
                    self.showingEditScreen.toggle()
                }
                .position(x: 350 , y: 20)
                .padding(20)
                .sheet(isPresented: $showingEditScreen, onDismiss: loadCustom) {
                    EditCustom()
                    }
        }
        .onAppear(perform: loadCustom)
    }
    
    /// Removes current indexed card from stack.
    /// - Parameter index: The index of the card to be removed.
    func removeCard(at index: Int) {
        deck.remove(at: index)
    }
    
    /// Loads users custom cards.
    func loadCustom() {
        if let data = UserDefaults.standard.data(forKey: "Cards") {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                self.deck = decoded
                self.deck = self.deck.shuffled()
            }
        }
    }
    
    
}
