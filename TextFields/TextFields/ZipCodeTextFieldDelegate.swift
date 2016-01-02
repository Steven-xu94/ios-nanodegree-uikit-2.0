//
//  ZipCodeTextFieldDelegate.swift
//  TextFields
//
//  Created by Steven Xu on 2015-12-26.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // Should have max 5 digits
    let digitLimit = 5
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // backspace
        if string.characters.count != 1 {
            return true
        }
        // numbers only
        if Int(string) == nil {
            return false
        }
        let numDigits = textField.text?.characters.count
        return numDigits < digitLimit
    }

}