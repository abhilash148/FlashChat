//
//  LoginViewController.swift
//  FlashChat
//
//  Created by Sai Abhilash Gudavalli on 15/05/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loginTapped(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] (authDataResult, error) in
                guard let strongSelf = self else { return }
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    print("Abhilash Hurray! Login successful")
                    strongSelf.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
    }
}
