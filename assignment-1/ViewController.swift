//
//  ViewController.swift
//  assignment-1
//
//  Created by Sungwoong Kang on 2022/01/18.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var numberTextField3: UITextField!
    @IBOutlet private weak var numberTextField4: UITextField!
    @IBOutlet private weak var numberTextField5: UITextField!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [numberTextField1, numberTextField2, numberTextField3, numberTextField4, numberTextField5].forEach { textField in
            textField?.keyboardType = .numberPad
            textField?.delegate = self
        }
    }
        
    @IBAction func tapCalculateButton(_ sender: UIButton) {
        let number1 = Int(numberTextField1.text!) ?? 0
        let number2 = Int(numberTextField2.text!) ?? 0
        let number3 = Int(numberTextField3.text!) ?? 0
        let number4 = Int(numberTextField4.text!) ?? 0
        let number5 = Int(numberTextField5.text!) ?? 0
                
        resultLabel.text = "\(number1 + number2 + number3 + number4 + number5)"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil
    }

}

