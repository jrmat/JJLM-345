//
//  NameCardView.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import SwiftUI

/// Displays view of selected card.
struct NameCardView: View {
    /// Card to be viewed.
    let card: String
    
    /// Used to set card in deck to nil,  allowing removal.
    var removal: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(Color.white)
            .shadow(radius: 10)
            
            VStack {
                Text(card) // show card prompt
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
