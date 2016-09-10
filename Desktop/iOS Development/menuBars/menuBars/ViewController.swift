//
//  ViewController.swift
//  menuBars
//
//  Created by Divye Gupta on 2016-08-11.
//  Copyright © 2016 Divye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 1000
    var timerRunning = false;

    
    func decreaseTimer(){
        
        if time > 0 {
        time -= 1
        timerValue.text = String(time)
        }
        else if time == 0 {
            timer.invalidate()
        }
    }
    
    @IBOutlet var timerValue: UILabel!
    @IBAction func playButton(_ sender: AnyObject) {
        if !timerRunning {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
            timerRunning = true
        }
        
    }
    @IBAction func pauseButton(_ sender: AnyObject) {
        timer.invalidate()
        timerRunning = false
    }
    
    @IBAction func plusTen(_ sender: AnyObject) {
        time += 10
        timerValue.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: AnyObject) {
        time -= 10
        if time > 10 {
                    timerValue.text = String(time)
        }
        else {
            timerValue.text = "0"
            timer.invalidate()
            timerRunning = false
        }
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        time = 1000
        timer.invalidate()
        timerValue.text = "1000"
        timerRunning = false
        
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

