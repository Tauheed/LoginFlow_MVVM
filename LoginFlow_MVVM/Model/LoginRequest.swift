//
//  LoginRequest.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword: String?
}
