//
//  InputNamesController.swift
//  NaZdrowie
//
//  Created by Jake Perkins on 6/08/21.
//
// https://www.youtube.com/watch?v=uVCFV668dSQ
//

import UIKit

class InputNamesController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var textView: UITextField!
    let friends = ""
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        nameField.delegate = self
        
        // do any additional setup after loading the view, typically from a nib
    }
        
    //override func didRecieveMemoryWarning(){
        //super.didReceiveMemoryWarning()
        // dispose of any resources that can be recreated
    //}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    @IBAction func backButton(_ sender: Any){
    }
    
    @IBAction func moreButton(_ sender: Any){
        textView.text = "Me and my friends :)\n\(friends)"
    }
    
    @IBAction func noMoreButton(_ sender: Any){
    }
}

extension InputNamesController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
