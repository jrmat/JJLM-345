//
//  ViewController.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var timerCount = 0
        var playerZloties = 0

        let timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
            timerCount += 1
            playerZloties += 10
            
            if timerCount == 100 {
                timer.invalidate()
            }
        }
    }


}

