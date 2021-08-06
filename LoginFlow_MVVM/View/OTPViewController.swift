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
    @IBOutlet weak var verifyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        verifyButton.isEnabled = false
        self.setupOTPView()
    }
    
    func setupOTPView() {
        
        self.optTextView.fieldsCount = 8
        self.optTextView.fieldBorderWidth = 2
        self.optTextView.defaultBorderColor = UIColor.darkGray
        self.optTextView.filledBorderColor = UIColor.black
        self.optTextView.cursorColor = UIColor.black
        self.optTextView.displayType = .underlinedBottom
        self.optTextView.fieldSize = 30
        self.optTextView.separatorSpace = 8
        self.optTextView.shouldAllowIntermediateEditing = false
        self.optTextView.delegate = self
        self.optTextView.initializeUI()
    }
    
    @IBAction func verifyAction(sender: UIButton) {
        
        performSegue(withIdentifier: "NewPswIdentifier", sender: self)
    }
}


extension OTPViewController: OTPFieldViewDelegate {
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        print(otp)
        verifyButton.isEnabled = true
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return true
    }
}
