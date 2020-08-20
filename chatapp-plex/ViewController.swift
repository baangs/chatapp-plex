//
//  ViewController.swift
//  chatapp-plex
//
//  Created by RD on 8/14/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
         super.viewDidLoad()
         checkCurrentUser()
     }
     
    
    func checkCurrentUser() {
        if (Auth.auth().currentUser == nil) {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "authViewController") {
            self.navigationController?.present(vc, animated: true, completion: nil)
            }
        }
    }
    
 

}
