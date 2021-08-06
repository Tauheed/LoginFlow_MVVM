//
//  LoginResponse.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation

struct LoginResponse : Decodable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData : Decodable
{
    let userID: String
}
