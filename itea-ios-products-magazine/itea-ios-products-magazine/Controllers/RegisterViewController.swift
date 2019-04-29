//
//  RegisterViewController.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/29/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var barView: UIView!
    @IBOutlet var pageTextLabe: UILabel!
    @IBOutlet var pageContainerView: UIImageView!
    @IBOutlet var regItButton: UIButton!
    @IBOutlet var backToEnterButton: UIButton!
    
    @IBOutlet var userFotoImage: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var replayPasswordTextField: UITextField!
    
    var imagePicker = UIImagePickerController()
    var loginPassDict : [UserDictModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        FrameInit()
        self.hideKeyboardWhenTappedAround()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        nameTextField.delegate = self
        replayPasswordTextField.delegate = self
        imagePicker.delegate = self
        loginPassDict = retrievePeople()!
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func RegisterUSerButtonTapped(_ sender: Any) {
        var access : Bool = false
        if(nameTextField.text!.isEmpty || emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty || replayPasswordTextField.text!.isEmpty) {
            Alert(errorCode: 3)
        } else {
            access = CheckLoginAndPassFromRegistration(username: nameTextField.text!,passwordQ: passwordTextField.text!, replayPassword: replayPasswordTextField.text!)
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
    
    func FrameInit() {
        regItButton.clipsToBounds = true
        let customColor = UIColor(red:0.81, green:0.32, blue:0.17, alpha:1.0)
        regItButton.translatesAutoresizingMaskIntoConstraints = false
        regItButton.layer.cornerRadius = 25
        regItButton.backgroundColor = customColor
        regItButton.titleLabel?.font = pageTextLabe.font.withSize(self.view.frame.width / 10 - 2)
        backToEnterButton.clipsToBounds = true
        backToEnterButton.translatesAutoresizingMaskIntoConstraints = false
        backToEnterButton.layer.cornerRadius = 25
        backToEnterButton.backgroundColor = customColor
        backToEnterButton.titleLabel?.font = pageTextLabe.font.withSize(self.view.frame.width / 15 - 8)
        barView.backgroundColor = customColor
        pageTextLabe.font = pageTextLabe.font.withSize(self.view.frame.width / 10 - 2)
        pageTextLabe.textColor = customColor
        pageContainerView.backgroundColor = customColor
        pageContainerView.backgroundColor = customColor
    }
    
    @IBAction func cancelRegItBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func getFotoFromCollectionButton(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imager = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            userFotoImage.image = imager
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func Alert(errorCode : Int) {
        var message = ""
        switch errorCode {
        case 1:
            message = "Invalid username! This username is already exsist!"
        case 2:
            message = "Invalid password! Paswords is not equal"
        case 3:
            message = "Incorrect enter data. Field are empty!"
        default:
            message = "Something wrong. Contact to support"
        }
        let alert = UIAlertController(title: "Registration error", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func CheckLoginAndPassFromRegistration(username : String, passwordQ : String , replayPassword : String) -> Bool {
        var checkFlag = false
                if(passwordQ == replayPassword) {
                    loginPassDict!.append(UserDictModel(foto: userFotoImage.image!, password: passwordQ, userName: username))
                    let arch = archivePeople(groups: loginPassDict!)
                    UserDefaults.standard.set(arch, forKey: "LogDictionary")
                    UserDefaults.standard.synchronize()
                    checkFlag = true
                } else {
                    Alert(errorCode: 2)
                }
        if(checkFlag == false) {
            Alert(errorCode: 4)
        }
        return checkFlag
    }
    
    func archivePeople(groups:[UserDictModel]) -> NSData {
        let archivedObject = NSKeyedArchiver.archivedData(withRootObject: groups as NSArray)
        return archivedObject as NSData
    }
    
    func retrievePeople() -> [UserDictModel]? {
        if let unarchivedObject = UserDefaults.standard.object(forKey: "LogDictionary") as? NSData {
            return NSKeyedUnarchiver.unarchiveObject(with: unarchivedObject as Data) as? [UserDictModel]
        }
        return nil
    }
    
}
