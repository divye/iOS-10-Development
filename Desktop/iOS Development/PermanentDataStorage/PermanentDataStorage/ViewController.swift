//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Divye Gupta on 2016-08-11.
//  Copyright © 2016 Divye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UserDefaults.standard.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let nameTrue = nameObject as? String {
            print(nameTrue)
        }
        
        let arr = [1, 2, 3, 4]
        UserDefaults.standard.set(arr, forKey: "array")
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

