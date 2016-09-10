//
//  ViewController.swift
//  Is it Prime
//
//  Created by Divye Gupta on 2016-08-11.
//  Copyright © 2016 Divye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberEntered: UITextField!
    
    @IBOutlet var result: UILabel!
    @IBAction func checkButton(_ sender: AnyObject) {
        
        if let number = Int(numberEntered.text!) {
            var isPrime = true
            var i = 2
            
            while (i < number)
            {
                if number % i == 0 {
                    isPrime = false
                }
                i += 1
            }
            if isPrime {
                result.text = numberEntered.text! + " is a Prime number."
            }
            else {
                result.text = numberEntered.text! + " is not a Prime number."
        }
    }
        else {
            result.text = "Please enter a positive whole number."
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

