//
//  CardView.swift
//  Na Zdrowie
//
//  Class for individual view of a card in a deck
//

import SwiftUI

/// Displays view of selected card.
struct CardView: View {
    /// Card to be viewed.
    let card: Card
    
    /// Used to set card in deck to nil,  allowing removal.
    var removal: (() -> Void)? = nil
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 10)
            
            VStack {
                Text(card.prompt) // show card prompt
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 250)
        .onTapGesture {
            self.removal?() // remove card when tapped
        }
    }
}

/// Shows preview of CardView.
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.NHIE.first!)
            .previewDevice("iPhone 11")
    }
}
