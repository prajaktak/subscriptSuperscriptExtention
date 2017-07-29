//
//  ViewController.swift
//  SubscriptSuperscriptString
//
//  Created by Prajakta Kulkarni on 7/29/17.
//  Copyright © 2017 Prajakta Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "H2O"
        let subscriptStr = str.subscriptString(subscriptStr: "2")
        testLabel.text = ""
        testLabel.attributedText = subscriptStr
        NSLog("subscriptStr %@", subscriptStr )
        
        let string = "19th"
        let superscriptStr = string.superscriptString(superscriptStr: "th")
        testLabel.text = ""
        testLabel.attributedText = superscriptStr
        NSLog("superscriptStr %@", superscriptStr )
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

