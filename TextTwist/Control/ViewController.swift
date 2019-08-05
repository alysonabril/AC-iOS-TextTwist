//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var scrambledLetterLabel: UILabel!
    @IBOutlet weak var correctGuessLabel: UILabel!
    @IBOutlet weak var letterInputTextField: UITextField!
    
    
    @IBOutlet weak var threeLetterView: UITextView!
    @IBOutlet weak var fourLetterView: UITextView!
    @IBOutlet weak var fiveLetterView: UITextView!
    @IBOutlet weak var sixLetterView: UITextView!
    
    var textTwistModel = TextTwistModel()
    var info: TestTwistInfo!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letterInputTextField.delegate = self
       info = textTwistModel.getRandomScrambledLetters()
        scrambledLetterLabel.text = info.letters
    }
    
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var neededBool = Bool()
        
        switch letterInputTextField.text!.count {
        case 3:
            threeLetterView.text += letterInputTextField.text!
        case 4:
            fourLetterView.text += letterInputTextField.text!
        case 5:
            fiveLetterView.text += letterInputTextField.text!
        case 6:
            sixLetterView.text += letterInputTextField.text!
        default:
            print("not valid input")
        }
        
        for word in info.words {
            if letterInputTextField.text == word {
                neededBool = true
            } else {
                neededBool = false
            }
        }
       return neededBool
    }

    
}






