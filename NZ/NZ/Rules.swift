//
//  Rules.swift
//  Na Zdrowie
//
//  Rule objects to be used in app are created and stored here.
//
import Foundation

/// Structure for Rules objects.
struct Rules {
    /// Name of rule.
    let name: String
    
    /// Description of rule.
    let rule: String
    
    /// Rule for "Most Likely To" card.
    static var mLT : Rules {
        Rules(name: "Most Likely To", rule: "After counting to 3, players will point to the player who is most likely to do what's on the card. The person most pointed to then drinks according to the card.")
    }
    
    /// Rule for "Party Trick" card.
    static var partyTrick : Rules {
        Rules(name: "Party Trick", rule: "Player must perform a party trick for their turn, otherwise they must finish their drink.")
    }
    
    /// Rule for "Rhyme" card.
    static var rhyme : Rules {
        Rules(name: "Rhyme", rule: "Player must come up with a word to be rhymed with. The loser of this game is the one who cannot come up with a word that rhymes with the original word fast enough.")
    }
    
    /// Rule for "Take, Give".
    static var tG : Rules {
        Rules(name: "Take, Give", rule: "Player drinks how many times the card says to 'take', and gives out the amount of sips the card says to 'give'. The given sips may be distributed among other players i.e. 'give 3' player X gives 1 sip to player Y, and 2 sips to player Z.")
    }
}
