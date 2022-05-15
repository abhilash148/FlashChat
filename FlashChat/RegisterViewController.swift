//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Sai Abhilash Gudavalli on 15/05/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authDataResult, error in
                
                if let e = error {
                    print("Abhilash error:\(e)")
                } else {
                    print("Abhilash Hurray! user creation success...")
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                }
                
            }
        }
    }
    
}
