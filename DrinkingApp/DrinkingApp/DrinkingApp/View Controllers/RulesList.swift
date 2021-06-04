//
//  RulesList.swift
//  DrinkingApp
//
//  Class that shows navigation view of rules for task deck
//

import Foundation

import SwiftUI
struct RulesList : View {
    @Environment(\.presentationMode) var presentationMode
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
                    self.presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("Rules"))
        }
    }
}

struct RulesList_Previews: PreviewProvider {
    static var previews: some View {
        RulesList()
            .previewDevice("iPhone 11")
    }
}
