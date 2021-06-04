//
//  CardView.swift
//  DrinkingApp
//
//  Class for individual view of a card in a deck
//

import SwiftUI

struct CardView: View {
    let card: Card
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.NHIE.first!)
            .previewDevice("iPhone 11")
    }
}
