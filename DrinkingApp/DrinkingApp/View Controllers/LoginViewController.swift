//
//  LoginViewController.swift
//  DrinkingApp
//
//  Created by Mohammed El Saka on 5/10/21.
//  Copyright © 2021 Mohammed El Saka. All rights reserved.
//

import UIKit

/// Displays log in page.
class LoginViewController: UIViewController {
    
    /// Text field for user's first name.
    @IBOutlet weak var firstNameTextField: UITextField!
    
    /// Text field for user's last name.
    @IBOutlet weak var lastNameTextField: UITextField!
   
    /// Button to initiate log in.
    @IBOutlet weak var loginButton: UIButton!
    
    /// Error label used as login/sign up not available in alpha.
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginTapped(_ sender: Any) {
    }
}
