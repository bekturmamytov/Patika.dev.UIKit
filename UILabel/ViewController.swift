//
//  ViewController.swift
//  UILabel
//
//  Created by Bektur Mamytov on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInActivityIndicater: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if usernameTextField.text == "bekturmamytov", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else {
            if usernameTextField.text != "bekturmamytov" {
                errorLabel.isHidden = false
                errorLabel.text = "Error: incorrect username"
                errorLabel.textColor = .red
            } else if !(passwordTextField.isHidden), passwordTextField.text == "123456" {
                logInActivityIndicater.startAnimating()
                errorLabel.isHidden = true
            } else {
                    errorLabel.isHidden = false
                    errorLabel.text = "Error: incorrect password"
                    errorLabel.textColor = .red
            }
        }
        
        
            
        
        
    }
    
}

