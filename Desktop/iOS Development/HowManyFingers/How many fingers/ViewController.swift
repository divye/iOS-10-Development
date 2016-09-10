//
//  ViewController.swift
//  How many fingers
//
//  Created by Divye Gupta on 2016-08-11.
//  Copyright © 2016 Divye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberOfFingers: UITextField!
    
    @IBAction func display(_ sender: AnyObject) {
        let diceRoll = arc4random_uniform(6)
        if numberOfFingers.text == String(diceRoll) {
            result.text = "You're right!"
        }
        else {
            result.text = "Wrong! The right number is " + String(diceRoll) + "."
        }
    }
    
    @IBOutlet var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

