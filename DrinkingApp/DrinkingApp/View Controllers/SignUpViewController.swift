//
//  SignUpViewController.swift
//  DrinkingApp
//
//  Created by Mohammed El Saka on 5/10/21.
//  Copyright © 2021 Mohammed El Saka. All rights reserved.
//

import UIKit

/// Displays sign up page.
class SignUpViewController: UIViewController {
    
    /// Text field for user's first name.
    @IBOutlet weak var firstNameTextField: UITextField!
    
    /// Text field for user's last name.
    @IBOutlet weak var lastNameTextField: UITextField!
    
    /// Text field for user's email.
    @IBOutlet weak var emailTextField: UITextField!
    
    /// Text field for user's password.
    @IBOutlet weak var passwordTextField: UITextField!
    
    /// Button to initiate sign up.
    @IBOutlet weak var signUpButton: UIButton!
    
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

    @IBAction func signUpTapped(_ sender: Any) {
    }
    
    
    
}
