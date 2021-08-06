//
//  LoginVCExtension.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation
import UIKit

extension LoginViewController : LoginViewModelDelegate
{
    func didReceiveLoginResponse(loginResponse: LoginResponse?){

        if(loginResponse?.errorMessage == nil && loginResponse?.data != nil)
        {
            self.performSegue(withIdentifier: "HomeIdentifier", sender: nil)
        }
        else if (loginResponse?.errorMessage != nil)
        {
            let alert = UIAlertController(title: Constants.ErrorAlertTitle, message: loginResponse?.errorMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}

