//
//  AuthViewController.swift
//  chatapp-plex
//
//  Created by RD on 8/13/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import UIKit
import FirebaseAuth

class AuthViewController: UIViewController {

    
    var logIn = true
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func loginClicked(_ sender: Any) {
        
    }
    
    
    @IBAction func registerClicked(_ sender: Any) {
        
    }
    
    @IBAction func forgotPassClicked(_ sender: Any) {
        
    }
    
    func login() {
        if (emailTextField.text?.count)! < 5 {
            emailTextField.backgroundColor = UIColor(red: 0.8, green: 0.1, blue: 0.1, alpha: 0.2)
            return
        }
        else {
            emailTextField.backgroundColor = UIColor.white
        }
        if (passwordTextField.text?.count)! < 5 {
            passwordTextField.backgroundColor = UIColor(red: 0.8, green: 0.1, blue: 0.1, alpha: 0.2)
            return
        }
        else {
            emailTextField.backgroundColor = UIColor.white
        }
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) {(user, error)
            in if let err = error {
                print("Error" + err.localizedDescription)
                return
            }
                print("Logged in succesfully!")
        }
    }
}
