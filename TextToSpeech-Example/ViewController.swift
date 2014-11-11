//
//  ViewController.swift
//  TextToSpeech-Example
//
//  Created by Blezcode on 11/11/14.
//  Copyright (c) 2014 Blezcode. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlet
    @IBOutlet weak var textFieldInput: UITextField!
    @IBOutlet weak var buttonSpeak: UIButton!
    
    // Variables
    let synth = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    @IBAction func speakTheText(sender: UIButton) {
        var myUtterance = AVSpeechUtterance(string: textFieldInput.text)
        myUtterance.rate = 0.3
        synth.speakUtterance(myUtterance)
    }
}

