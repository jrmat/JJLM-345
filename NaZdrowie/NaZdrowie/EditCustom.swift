//
//  EditCustom.swift
//  Na Zdrowie
//
// View for editing custom cards.
//
import SwiftUI

protocol Card1Protocol: Codable { 
         func saveData()
         func  loadData()
    }


/// Structure for editing view for custom cards.
struct EditCustom: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var cards = [Card]()
    @State private var newPrompt = ""
    
    /// Displays edit screen for custom cards.
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Add new card")) {
                    TextField("Prompt", text: $newPrompt)
                    Button("Add card", action: addCard)
                }

                Section {
                    ForEach(0..<cards.count, id: \.self) { index in
                        VStack(alignment: .leading) {
                            Text(self.cards[index].prompt)
                                .font(.headline)
                        }
                    }
                    .onDelete(perform: removeCards)
                }
            }
            .navigationBarTitle("Edit Cards")
            .navigationBarItems(trailing: Button("Done", action: dismiss))
            .listStyle(GroupedListStyle())
            .onAppear(perform: loadData)
        }
    }

    /// Dismisses editing view.
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }

    /// Loads users custom cards.
    func loadData() {
        if let data = UserDefaults.standard.data(forKey: "Cards") {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                self.cards = decoded
            }
        }
    }
    
    /// Saves data of custom cards.
    func saveData() {
        if let data = try? JSONEncoder().encode(cards) {
            UserDefaults.standard.set(data, forKey: "Cards")
        }
    }

    /// Adds new custom card with user input of crad prompt.
    func addCard() {
        let trimmedPrompt = newPrompt.trimmingCharacters(in: .whitespaces)
        guard trimmedPrompt.isEmpty == false else { return }
        let card = Card(prompt: trimmedPrompt)
        cards.insert(card, at: 0)
        saveData()
    }

    /// Removes custom card if user swipes to delete it.
    /// - Parameters:
    /// - offsets: Offset from user swiping to delete a card.
    func removeCards(at offsets: IndexSet) {
        cards.remove(atOffsets: offsets)
        saveData()
    }
}

/// Shows preview of EditCustom.
struct EditCustom_Previews: PreviewProvider {
    static var previews: some View {
        EditCustom()
            .previewDevice("iPhone 11")
    }
}

