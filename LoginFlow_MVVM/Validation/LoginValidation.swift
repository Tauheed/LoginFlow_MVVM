//
//  LoginValidation.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation

struct LoginValidation {

    func Validate(loginRequest: LoginRequest) -> ValidationResult
    {
        if(loginRequest.userEmail!.isEmpty)
        {
            return ValidationResult(success: false, error: "User email is empty")
        }

        if(loginRequest.userPassword!.isEmpty)
        {
            return ValidationResult(success: false, error: "User password is empty")
        }
        
        if (loginRequest.userEmail != Constants.CorrectUserId && loginRequest.userPassword != Constants.CorrectPsw)
        {
            return ValidationResult(success: false, error: "Wrong Credentials")
        }


        return ValidationResult(success: true, error: nil)
    }

}
