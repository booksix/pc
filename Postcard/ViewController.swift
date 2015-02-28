//
//  ViewController.swift
//  Postcard
//
//  Created by Brett Wiesman on 2/26/15.
//  Copyright (c) 2015 BookSix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text + " " + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Fuck Off", forState: UIControlState.Normal)
        mailButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
    }
    
    

}

