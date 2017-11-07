//
//  ViewController.swift
//  ExpensesReport
//
//  Created by Venkatesh Ventrapragada on 10/4/17.
//  Copyright © 2017 Venkatesh Ventrapragada. All rights reserved.
//

import UIKit
import Foundation
import FirebaseAuth

class MainViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // if let _ = Auth.auth().currentUser {
           // self.signIn()
     //   }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func didTappedLogin(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let user = user {
                print(user)
            }
        }
        /*  Auth.auth().signIn(withEmail: email!, password: password!, completion: { (user, error) in
            guard let _ = user else {
                if let error = error {
                    if let errCode = AuthErrorCode(rawValue: error._code) {
                        switch errCode {
                        case .errorCodeUserNotFound:
                            self.showAlert("User account not found. Try registering")
                        case .errorCodeWrongPassword:
                            self.showAlert("Incorrect username/password combination")
                        default:
                            self.showAlert("Error: \(error.localizedDescription)")
                        }
                    }
                    return
                }
                assertionFailure("user and error are nil")
            }
            self.signIn()
        }) */
    }
    
   /* @IBAction func didTappedForgotPassword(_ sender: Any) {
        let prompt = UIAlertController(title: "To Do App", message: "Email:", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            let userInput = prompt.textFields![0].text
            if (userInput!.isEmpty) {
                return
            }
            Auth.auth().sendPasswordReset(withEmail: userInput!, completion: { (error) in
                if let error = error {
                    if let errCode = AuthErrorCode(rawValue: error._code) {
                        switch errCode {
                        case .errorCodeUserNotFound:
                            DispatchQueue.main.async {
                                self.showAlert("User account not found. Try registering")
                            }
                        default:
                            DispatchQueue.main.async {
                                self.showAlert("Error: \(error.localizedDescription)")
                            }
                        }
                    }
                    return
                } else {
                    DispatchQueue.main.async {
                        self.showAlert("You'll receive an email shortly to reset your password.")
                    }
                }
            })
        }
        prompt.addTextField(configurationHandler: nil)
        prompt.addAction(okAction)
        present(prompt, animated: true, completion: nil)
    }
    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "To Do App", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func signIn() {
        performSegue(withIdentifier: "SignInFromLogin", sender: nil)
    } */
}

