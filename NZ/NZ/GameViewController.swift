//
//  GameViewController.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import UIKit
import SwiftUI

class GameViewController: UIViewController {
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedN : [String] = UserDefaults.standard.object(forKey: "savedNames") as? [String] {
            names = savedN
        }
    }

    @IBAction func toTask(_ sender: Any) {
        if names.isEmpty {
            let tView = GameView(deck : Card.taskDeck, inRules: true)
            let hosted = UIHostingController(rootView: tView)
            present(hosted, animated: true)
        } else {
            let deck = ["_name_ and the person to your left, drink once.", "Waterfall.", "_name_ and the person to your right, drink twice.", "Blondes drink.", "_name_, give out 2 sips.","_name_, do a party trick! Or finish drink.", "Rhyme! Loser drinks 3 times.", "Most likely to go to prison! Loser drinks twice.", "_name_, drink for how many times 'A' is in your name.", "_name_! Take 2, give 2."]
            var nameDeck = [String]()
            var tempName = names
            var text = ""
            for cards in deck  {
                if cards.contains("_name_") {
                    let rn = tempName.randomElement()!
                    text = cards.replacingOccurrences(of: "_name_", with: rn)
                    tempName = tempName.filter { $0 != rn }
                    if tempName.isEmpty {
                        tempName = names
                    }
                } else {
                    text = cards
                }
                nameDeck.append(text)
            }
            let tView = NameView(deck: nameDeck)
            let hosted = UIHostingController(rootView: tView)
            present(hosted, animated: true)
        }
    }
    
    @IBAction func toNev(_ sender: Any) {
        let nView = GameView(deck : Card.NHIE, inRules: false)
        let hosted = UIHostingController(rootView: nView)
        present(hosted, animated: true)
    }
    
    @IBAction func toMLT(_ sender: Any) {
        let mView = GameView(deck : Card.MLT, inRules: false)
        let hosted = UIHostingController(rootView: mView)
        present(hosted, animated: true)
    }
    
    @IBAction func toStand(_ sender: Any) {
        let sView = GameView(deck : Card.standard, inRules: false)
        let hosted = UIHostingController(rootView: sView)
        present(hosted, animated: true)
    }
    
    
    @IBAction func toCust(_ sender: Any) {
        let cView = CustomGameView()
        let hosted = UIHostingController(rootView: cView)
        present(hosted, animated: true)
    }
    
    
}
