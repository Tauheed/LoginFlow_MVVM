//
//  LoginViewController.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 4/8/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var password: UITextField!
    private var loginViewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.isNavigationBarHidden = true
        loginViewModel.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


    @IBAction func loginAction(sender: UIButton) {
        
        //performSegue(withIdentifier: "ForgotPSWIdentifier", sender: self)
        let request = LoginRequest(userEmail: userId.text, userPassword: password.text)
        loginViewModel.loginUser(loginRequest: request)
    }
}

extension LoginViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

