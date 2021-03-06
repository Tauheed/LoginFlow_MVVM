//
//  ForgotPswViewController.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 5/8/21.
//

import UIKit

class ForgotPswViewController: UIViewController {

    @IBOutlet weak var userId: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userId.text = UserDefaultUtility().getUserId()

    }
    
    @IBAction func submitEmailAction(sender: UIButton) {
        
        performSegue(withIdentifier: "OTPIdentifier", sender: self)
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ForgotPswViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
