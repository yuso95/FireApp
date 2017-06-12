//
//  ViewController.swift
//  FireApp
//
//  Created by Younoussa Ousmane Abdou on 6/11/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let conditionRef = FIRDatabase.database().reference().child("condition")

    override func viewDidLoad() {
        super.viewDidLoad()

        conditionRef.observeSingleEvent(of: .value, with: { (snap) in
            // Do something
            // Optional Value
            self.conditionLabel.text = snap.value.debugDescription
        })
    }
    
    // MARK: Outlets
    @IBOutlet weak var conditionLabel: UILabel!
    
    // MARK: Actions
    @IBAction func sunnyDidTouch(_ sender: UIButton) {
        conditionRef.setValue(sender.currentTitle)
    }
    
    @IBAction func foggyDidTouch(_ sender: UIButton) {
        conditionRef.setValue(sender.currentTitle)
    }
}

