//
//  LoginViewModel.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation

protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse: LoginResponse?)
}

struct LoginViewModel
{
    var delegate : LoginViewModelDelegate?

    func loginUser(loginRequest: LoginRequest)
    {
        let validationResult = LoginValidation().Validate(loginRequest: loginRequest)

        if(validationResult.success)
        {
            if (loginRequest.userEmail == Constants.CorrectUserId && loginRequest.userPassword == Constants.CorrectPsw){
                
                UserDefaultUtility().saveUserId(userId: loginRequest.userEmail!)
                self.delegate?.didReceiveLoginResponse(loginResponse: LoginResponse(errorMessage: nil,
                                                                                    data: LoginResponseData(userID: loginRequest.userEmail!)))
            }
        }
        else {
            self.delegate?.didReceiveLoginResponse(loginResponse: LoginResponse(errorMessage: validationResult.error, data: nil))
        }
    }
}
