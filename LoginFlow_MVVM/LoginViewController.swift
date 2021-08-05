//
//  LoginViewController.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 4/8/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


    @IBAction func loginAction(sender: UIButton) {
        
        performSegue(withIdentifier: "ForgotPSWIdentifier", sender: self)
    }
}

