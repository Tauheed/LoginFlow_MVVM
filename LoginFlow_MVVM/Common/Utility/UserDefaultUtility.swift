//
//  UserDefaultUtility.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 6/8/21.
//

import Foundation

struct UserDefaultUtility
{
    func saveUserId(userId: String)
    {
        UserDefaults.standard.set(userId, forKey: "userId")
    }

    func getUserId() -> String
    {
        return UserDefaults.standard.value(forKey: "userId") as! String
    }
}
