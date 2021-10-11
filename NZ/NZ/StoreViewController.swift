//
//  StoreViewController.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import UIKit

class StoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Store"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.centerTitle()
    }
    
}
