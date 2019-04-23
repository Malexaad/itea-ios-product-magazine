//
//  LoginViewController.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/22/19.
//  Copyright © 2019 G9. All rights reserved.
//
import Foundation
import UIKit
import SwiftGifOrigin
class LoginViewController: UIViewController {

    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var buttonView: UIButton!
    
    var loginPassDict = LoginDictManager().GetLogPassDict()
    var userInfo : UserInfoModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        FrameInit()
    }
    
    func FrameInit() {
        buttonView.clipsToBounds = true
        buttonView.layer.cornerRadius = 25
    }
    
    func CheckLoginPass(username : String, password : String) -> Bool {
            var checkFlag = false
            for(key,value) in loginPassDict {
                if(key == username) {
                    if(value.userPassword == password) {
                        userInfo = UserInfoModel(username: key, userFoto: value.userFoto)
                        checkFlag = true
                    } else {
                        Alert(errorCode: 2)
                    }
                }
            }
        if(checkFlag == false) {
            Alert(errorCode: 1)
        }
        return checkFlag
    }
    
    func Alert(errorCode : Int) {
        var message = ""
        switch errorCode {
        case 1:
            message = "Invalid username!"
        case 2:
            message = "Invalid password!"
        case 3:
            message = "Incorrect enter data. Field are empty!"
        default:
            message = "Something wrong. Contact to support"
        }
        let alert = UIAlertController(title: "Login error", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        var access : Bool = false
        if(usernameTextField.text!.isEmpty || passwordTextField.text!.isEmpty) {
            Alert(errorCode: 3)
        } else {
         access = CheckLoginPass(username: usernameTextField.text!,password: passwordTextField.text!)
        }
        if(access) {
            //let storyboard = UIStoryboard(name: " ", bundle: nil)
            //let vc = storyboard.instantiateViewController(withIdentifier: " ") as! 
            //vc.present(vc, animated: true, completion: nil)
            print("Acces OK!")
        }
        else {
            Alert(errorCode: 4)
        }
    }
    
}
