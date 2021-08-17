//
//  NaZdrowieApp.swift
//  Na Zdrowie
//
//  Created by Jada on 27/05/21.
//

import SwiftUI
/// Main method to run app.
@main
struct NaZdrowieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

var timerCount = 0
var playerZloties = 0

let timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
    timerCount += 1
    playerZloties += 10
    
    if timerCount == 100 {
        timer.invalidate()
    }
}
