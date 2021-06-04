//
//  Card.swift
//  DrinkingApp
//
//  Class that where card objects are kept to be used in game
//

import Foundation

struct Card {
    let prompt: String // description on card
    
    // array of Card objects for task deck
    static var taskDeck : [Card] {
        [Card(prompt: "You and the person to your left, drink once."), Card(prompt: "Waterfall."), Card(prompt: "You and the person to your right, drink twice."), Card(prompt: "Blondes drink."), Card(prompt: "Give out 2 sips."), Card(prompt: "Party trick! Or finish drink."), Card(prompt: "Rhyme! Loser drinks 3 times."), Card(prompt: "Most likely to go to prison! Loser drinks twice."), Card(prompt: "Drink for how many times 'A' is in your name."), Card(prompt: "Take 2, give 2.")]
    }
    // array of Card objects for never have I ever deck
    static var NHIE : [Card] {
    [Card(prompt: "Never have I ever been overseas."), Card(prompt: "Never have I ever made an app."), Card(prompt: "Never have I ever cried doing an assignment."), Card(prompt: "Never have I ever changed my major."), Card(prompt: "Never have I ever donated to charity."), Card(prompt: "Never have I ever gotten car sick."), Card(prompt: "Never have I ever learnt to play an instrument."), Card(prompt: "Never have I ever been in trouble with the law."), Card(prompt: "Never have I ever had an allergy."), Card(prompt: "Never have I ever played a team sport."), Card(prompt: "Never have I ever had a pet.")]
    }
    // array Card objects for standard cards deck
    static var standard : [Card] {
        [Card(prompt: "A♠️"), Card(prompt: "2♠️"), Card(prompt: "3♠️"), Card(prompt: "4♠️"), Card(prompt: "5♠️"), Card(prompt: "6♠️"), Card(prompt: "7♠️"), Card(prompt: "8♠️"), Card(prompt: "9♠️"), Card(prompt: "10♠️"), Card(prompt: "J♠️"), Card(prompt: "Q♠️"), Card(prompt: "K♠️"), Card(prompt: "A♦️"), Card(prompt: "2♦️"), Card(prompt: "3♦️"), Card(prompt: "4♦️"), Card(prompt: "5♦️"), Card(prompt: "6♦️"), Card(prompt: "7♦️"), Card(prompt: "8♦️"), Card(prompt: "9♦️"), Card(prompt: "10♦️"), Card(prompt: "J♦️"), Card(prompt: "Q♦️"), Card(prompt: "K♦️"), Card(prompt: "A♥️"), Card(prompt: "2♥️"), Card(prompt: "3♥️"), Card(prompt: "4♥️"), Card(prompt: "5♥️"), Card(prompt: "6♥️"), Card(prompt: "7♥️"), Card(prompt: "8♥️"), Card(prompt: "9♥️"), Card(prompt: "10♥️"), Card(prompt: "J♥️"), Card(prompt: "Q♥️"), Card(prompt: "K♥️"), Card(prompt: "A♣️"), Card(prompt: "2♣️"), Card(prompt: "3♣️"), Card(prompt: "4♣️"), Card(prompt: "5♣️"), Card(prompt: "6♣️"), Card(prompt: "7♣️"), Card(prompt: "8♣️"), Card(prompt: "9♣️"), Card(prompt: "10♣️"), Card(prompt: "J♣️"), Card(prompt: "Q♣️"), Card(prompt: "K♣️")]
    }
}


