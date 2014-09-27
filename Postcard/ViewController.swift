//
//  ViewController.swift
//  Postcard
//
//  Created by Dave Price on 9/27/14.
//  Copyright (c) 2014 CrunchTap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var enternametextfield: UITextField!
    @IBOutlet weak var entermessagetextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel2: UILabel!
    @IBOutlet weak var enterDescriptionTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment to test commit
        messagelabel.hidden = false
        messagelabel.text = entermessagetextfield.text
        messagelabel.textColor = UIColor.redColor()
        
        messageLabel2.hidden = false
        messageLabel2.text = enterDescriptionTextField.text
        messageLabel2.textColor = UIColor.blueColor()
        
        entermessagetextfield.text = ""
        entermessagetextfield.resignFirstResponder()
        
        enterDescriptionTextField.text = ""
        enterDescriptionTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

