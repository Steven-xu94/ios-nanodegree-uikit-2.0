//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var colorizerTextField: UITextField!
    @IBOutlet weak var countTextField: UITextField!
    @IBOutlet weak var randomColorTextField: UITextField!
    @IBOutlet weak var characterCountLabel: UILabel!
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextFIeld: UITextField!
    @IBOutlet weak var lockTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    let emoji = EmojiTextFieldDelegate()
    let colorizer = ColorizerTextFieldDelegate()
    let randomColor = RandomColorTextFieldDelegate()
    let zipCode = ZipCodeTextFieldDelegate()
    let cash = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // set the label to be hidden
        self.characterCountLabel.hidden = true
        
        // Set the delegates
        self.emojiTextField.delegate = emoji
        self.colorizerTextField.delegate = colorizer
        self.countTextField.delegate = self
        self.randomColorTextField.delegate = randomColor
        self.zipCodeTextField.delegate = zipCode
        self.cashTextFIeld.delegate = cash
        self.lockTextField.delegate = self
    }

    
    // Text Field Delegate Methods
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        if textField == countTextField {
            // Figure out what the new text will be, if we return true
            var newText: NSString = textField.text!
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            
            // hide the label if the newText will be an empty string
            self.characterCountLabel.hidden = (newText.length == 0)
            
            // Write the length of newText into the label
            self.characterCountLabel.text = String(newText.length)

            // returning true gives the text field permission to change its text
            return true
        }
        
        else if textField == lockTextField {
            return lockSwitch.on
        }
        
        else {
            return false
        }
    }
}

