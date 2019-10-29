//
//  SignUpViewController.swift
//  Upto
//
//  Created by Jack Short on 8/31/16.
//  Copyright © 2016 Jack Short. All rights reserved.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpUser(_ sender: AnyObject) {
        if (emailTextField.text != nil && usernameTextField.text != nil && passwordTextField.text != nil) {
        }
    }
}
