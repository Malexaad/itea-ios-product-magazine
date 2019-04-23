//
//  LoginViewController.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/22/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var frameUIImage: UIImageView!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    var loginPassDict = LoginDictManager().GetLogPassDict()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FrameInit()
       
    }
    
    func FrameInit() {
        frameUIImage.clipsToBounds = true
        frameUIImage.layer.cornerRadius = 25
    }
    
    func CheckLoginPass() {
        
    }
    
    func Alert() {
    
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
    }
    
}
