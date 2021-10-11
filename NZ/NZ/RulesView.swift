//
//  RulesView.swift
//  Na Zdrowie
//
//  Shows view of a selected rule.
//

import Foundation

import SwiftUI

/// Structure for RulesView.
struct RulesView: View {
    /// Rule to be viewed.
    let rules : Rules
    
    /// Displays selected rule.
    var body: some View {
        VStack {
            Text(rules.name) // show name of rule
            .font(.largeTitle)
            .bold()
            Divider()
            Text(rules.rule) // show rule's description
            .font(.title2)
        }
        .padding(20)
    }
}

/// Shows preview of RulesView.
struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView(rules: Rules.rhyme)
            .previewDevice("iPhone 11")
    }
}
