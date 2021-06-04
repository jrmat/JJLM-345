//
//  RulesView.swift
//  DrinkingApp
//
//  Class that shows view of a selected rule
//

import Foundation

import SwiftUI

struct RulesView: View {
    let rules : Rules
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

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView(rules: Rules.rhyme)
            .previewDevice("iPhone 11")
    }
}
