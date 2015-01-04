//
//  ViewController.swift
//  Postcard
//
//  Created by Brandon Wolfe on 1/3/15.
//  Copyright (c) 2015 Brandon Wolfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        sender.backgroundColor = UIColor.blackColor() // change background color of button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal) //Change button text with IBOutlet
        
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        
        messageLabel.text = enterMessageTextField.text  //update text
        messageLabel.hidden = false  //show label
        messageLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""  //clear text fields
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()  //remove keyboard
    
    }

}

