//
//  Problem2ViewController.swift
//  Assignment2
//
//  Created by Sams on 10/4/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {
  
    @IBOutlet weak var textField2: UITextView!

    @IBAction func runButton2(_ sender: AnyObject) {
        
        textField2.text = ("We have pushed this button successfully")
        
               
               
        
        textField2.text = ("There are \(step.numberOfTrue) Living Cells here and \(step2.isLiving) living Neighbors")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //self.view.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        
        self.navigationItem.title = "Problem 2"
        
        }

}
