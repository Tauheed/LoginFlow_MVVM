//
//  OTPViewController.swift
//  LoginFlow_MVVM
//
//  Created by Tauheed Ahmad on 5/8/21.
//

import UIKit
import OTPFieldView

class OTPViewController: UIViewController {

    @IBOutlet var optTextView: OTPFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupOTPView()
    }
    
    func setupOTPView() {
        
        self.optTextView.fieldsCount = 5
        self.optTextView.fieldBorderWidth = 2
        self.optTextView.defaultBorderColor = UIColor.black
        self.optTextView.filledBorderColor = UIColor.red
        self.optTextView.cursorColor = UIColor.green
        self.optTextView.displayType = .underlinedBottom
        self.optTextView.fieldSize = 30
        self.optTextView.separatorSpace = 8
        self.optTextView.shouldAllowIntermediateEditing = false
        self.optTextView.delegate = self
        self.optTextView.initializeUI()
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


extension OTPViewController: OTPFieldViewDelegate {
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        print(otp)
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return true
    }
}
