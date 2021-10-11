//
//  InputNameViewController.swift
//  NZ
//
//  Created by Jada on 11/10/21.
//

import UIKit

class InputNameViewController: UIViewController {
    

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameView: UITextView!
    
    var nameList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showGames" {
            if nameList.count < 2 {
                return false
            } else {
                return true
            }
        }
        return true
    }
    
    @IBAction func addName(_ sender: Any) {
        if nameList.count == 10 {
            let alert = UIAlertController(title: "Too many friends added", message: "Wow someone's popular. Either remove a name or tap done to play.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Chur", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
        else if nameList.contains(nameField.text!) {
            let alert = UIAlertController(title: "Name already added", message: "You can't have the same name again otherwise you won't know whose turn it is??", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "I'm an idiot and I'm sorry.", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        else {
            nameList.append(nameField.text!)
            nameView.text = nameList.joined(separator: "\n")
        }
    }
    
    @IBAction func removeName(_ sender: Any) {
        if nameList.contains(nameField.text!) {
            nameList = nameList.filter { $0 != nameField.text! }
            nameView.text = nameList.joined(separator: "\n")
        } else {
            let alert = UIAlertController(title: "Name not in friends list", message: "Can't remove what doesnt exist. Maybe check your spelling aye.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dust yourself off and try again", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
    }
    
    @IBAction func storeNames(_ sender: Any) {
        if nameList.count < 2 {
            let alert = UIAlertController(title: "Not enough friends added", message: "Add more friend names loser.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok :(", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        } else {
            let defaults = UserDefaults.standard
            defaults.setValue(nameList, forKey: "savedNames")
        }
    }
}


extension InputNameViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
