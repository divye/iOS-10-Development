//
//  ViewController.swift
//  TableTest
//
//  Created by Divye Gupta on 2016-08-11.
//  Copyright © 2016 Divye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var numberOfRows = 50
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numberOfRows
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cells = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cells.textLabel?.text = String(numberOfRows + 1)
        cells.textLabel?.text = "Hello"
        return cells
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

