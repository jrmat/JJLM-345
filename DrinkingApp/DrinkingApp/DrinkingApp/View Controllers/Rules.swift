//
//  Rules.swift
//  DrinkingApp
//
//  Class that where rule objects are kept to be used in game
//
import Foundation

struct Rules {
    let name: String // name of rule
    let rule: String // description of rule
    
    // Rules object for Most Likely To.
    static var mLT : Rules {
        Rules(name: "Most Likely To", rule: "After counting to 3, players will point to the player who is most likely to do what's on the card. The person most pointed to then drinks according to the card.")
    }
    
    // Rules object for Party Trick.
    static var partyTrick : Rules {
        Rules(name: "Party Trick", rule: "Player must perform a party trick for their turn, otherwise they must finish their drink.")
    }
    
    // Rules object for Rhyme.
    static var rhyme : Rules {
        Rules(name: "Rhyme", rule: "Player must come up with a word to be rhymed with. The loser of this game is the one who cannot come up with a word that rhymes with the original word fast enough.")
    }
    
    // Rules object for Take, Give.
    static var tG : Rules {
        Rules(name: "Take, Give", rule: "Player drinks how many times the card says to 'take', and gives out the amount of sips the card says to 'give'. The given sips may be distributed among other players i.e. 'give 3' player X gives 1 sip to player Y, and 2 sips to player Z.")
    }

}
