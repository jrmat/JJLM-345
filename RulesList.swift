//
//  RulesList.swift
//  DrinkingApp
//
//  Shows navigation view of rules for task deck.
//

import Foundation

import SwiftUI

/// Structure for RulesList.
struct RulesList : View {
    @Environment(\.presentationMode) var presentationMode
    
    /// Displays navigation to different Task deck rules to be selected.
    var body: some View {
        // navigates to selected rule's description
        NavigationView {
            List {
                NavigationLink(destination: RulesView(rules: Rules.mLT)) {
                    Text("Most Likely To")
                }
                NavigationLink(destination: RulesView(rules: Rules.partyTrick)) {
                    Text("Party Trick")
                }
                NavigationLink(destination: RulesView(rules: Rules.rhyme)) {
                    Text("Rhyme")
                }
                NavigationLink(destination: RulesView(rules: Rules.tG)) {
                    Text("Take, Give")
                }
                Spacer()
                Button("Go back to game") {
                    self.presentationMode.wrappedValue.dismiss() // dismisses rule list display
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("Rules"))
        }
    }
}

/// Shows preview of RuleList.
struct RulesList_Previews: PreviewProvider {
    static var previews: some View {
        RulesList()
            .previewDevice("iPhone 11")
    }
}
