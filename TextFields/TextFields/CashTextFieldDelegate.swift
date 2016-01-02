//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by Steven Xu on 2015-12-26.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    var cashInPennies = 0
    var cashString: String {
        let str = NSNumberFormatter.localizedStringFromNumber(Double(cashInPennies) / 100, numberStyle: .CurrencyStyle)
        return str
    }
    
    // typing 4-2-7-5 would produce $0.00, $0.04, $0.42, $4.27, $42.75.
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        // backspace
        if string.characters.count != 1 {
            cashInPennies /= 10
            textField.text = cashString
            return false
        }
        // only numbers
        if Int(string) == nil {
            return false
        }
        
        let digit = Int(string)!
        cashInPennies = cashInPennies * 10 + digit
        textField.text = cashString
        return false
    }

}